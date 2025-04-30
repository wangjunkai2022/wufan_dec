.class public Lcom/join/mgps/adapter/j;
.super Landroid/widget/BaseAdapter;
.source "CollectionModuleSixAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/j$b;,
        Lcom/join/mgps/adapter/j$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/LayoutInflater;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;"
        }
    .end annotation
.end field

.field d:Lcom/danikula/videocache/i;

.field e:Lcom/join/android/app/component/video/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/android/app/component/video/c;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/join/mgps/adapter/j;->c:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/j;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/adapter/j;->e:Lcom/join/android/app/component/video/c;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    iput-object p2, p0, Lcom/join/mgps/adapter/j;->b:Landroid/view/LayoutInflater;

    .line 6
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/j;->e(Landroid/content/Context;)Lcom/danikula/videocache/i;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/j;->d:Lcom/danikula/videocache/i;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/j;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/j;->a:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method b(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .locals 8
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

    .line 1
    invoke-static {p3}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p3, "1"

    .line 2
    :cond_0
    invoke-virtual {p6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3
    invoke-static {p7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p7

    const v0, 0x7f0c0594

    const/4 v1, 0x0

    invoke-virtual {p7, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p7

    const v0, 0x7f0900fd

    .line 4
    invoke-virtual {p7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v2, 0x7f090109

    .line 5
    invoke-virtual {p7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0900f2

    .line 6
    invoke-virtual {p7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f091046

    .line 7
    invoke-virtual {p7, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f090c16

    .line 8
    invoke-virtual {p7, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 9
    invoke-static {p2}, Lcom/join/mgps/Util/d2;->c(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    .line 10
    invoke-static {p3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p2

    mul-double p2, p2, v6

    double-to-long p2, p2

    .line 11
    invoke-static {p2, p3}, Lcom/join/mgps/Util/UtilsMy;->Y1(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p2, 0x0

    const/16 p3, 0x8

    if-eqz p4, :cond_d

    .line 12
    invoke-virtual {p4}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 13
    invoke-virtual {p4}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v4, "7"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "\u00b7"

    if-nez v2, :cond_5

    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "23"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 15
    :cond_1
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_2
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/TipBean;

    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object v1, v0

    :cond_3
    if-eqz v1, :cond_4

    .line 17
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object p4

    invoke-virtual {p4}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 18
    :cond_4
    invoke-virtual {p4}, Lcom/join/mgps/dto/TipNew;->getModel()Lcom/join/mgps/dto/TipBean;

    move-result-object p4

    invoke-virtual {p4}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_5
    :goto_0
    const-string p4, "\u5b89\u5353"

    if-eqz p5, :cond_b

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_6
    :goto_1
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/TipBean;

    .line 21
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 22
    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v6, "44"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v6, "45"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v6, "47"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1}, Lcom/join/mgps/dto/TipBean;->getId()Ljava/lang/String;

    move-result-object v2

    const-string v6, "48"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_1

    .line 23
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v6, 0x2

    if-ge v2, v6, :cond_8

    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 25
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p5

    const/4 v1, 0x1

    if-le p5, v1, :cond_a

    .line 26
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/join/mgps/dto/TipBean;

    if-eqz p5, :cond_9

    .line 27
    invoke-virtual {p5}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p4

    .line 28
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p5

    if-le p5, v1, :cond_b

    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/join/mgps/dto/TipBean;

    if-eqz p5, :cond_b

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto :goto_2

    .line 31
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p5

    if-lez p5, :cond_b

    .line 32
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/join/mgps/dto/TipBean;

    if-eqz p5, :cond_b

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Lcom/join/mgps/dto/TipBean;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 34
    :cond_b
    :goto_2
    invoke-virtual {v3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 35
    :cond_c
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 36
    :cond_d
    invoke-virtual {v3, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 37
    invoke-virtual {v4, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 38
    :goto_3
    invoke-static {p1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_e

    const-string p4, "0"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_e

    .line 39
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u5206"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    invoke-virtual {v5, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 41
    :cond_e
    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    :goto_4
    invoke-virtual {p6, p7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public c(I)Lcom/join/mgps/business/CollectionBeanSubBusiness;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/j;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    return-object p1
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/business/CollectionBeanSubBusiness;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/j;->c:Ljava/util/List;

    return-object v0
.end method

.method public e(Landroid/content/Context;)Lcom/danikula/videocache/i;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/MApplication;->p(Landroid/content/Context;)Lcom/danikula/videocache/i;

    move-result-object p1

    return-object p1
.end method

.method f(Landroid/widget/TextView;Landroid/widget/RelativeLayout;ILcom/join/mgps/dto/PayTagInfo;)V
    .locals 5

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    const/4 v1, 0x0

    if-eqz p4, :cond_0

    .line 2
    invoke-virtual {p4}, Lcom/join/mgps/dto/PayTagInfo;->getAmount_check()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne p3, v3, :cond_1

    if-nez v2, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1100d4

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41400000    # 12.0f

    .line 4
    invoke-virtual {p1, v4, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    :cond_1
    if-ne p3, v4, :cond_2

    if-nez v2, :cond_2

    const-string p3, "\u5373\u5c06\u5f00\u653e"

    .line 5
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f071125

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p1, v1, p3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 7
    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    goto :goto_2

    :cond_2
    if-eqz p4, :cond_3

    .line 8
    invoke-virtual {p4}, Lcom/join/mgps/dto/PayTagInfo;->getAmount_check()I

    move-result p2

    if-lez p2, :cond_3

    .line 9
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f110261

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p4}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    move-result-object p4

    aput-object p4, v0, v1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f1100d1

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const/high16 p2, 0x41500000    # 13.0f

    .line 11
    invoke-virtual {p1, v4, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_2
    return-void
.end method

.method g(Lcom/join/mgps/adapter/j$b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p1, Lcom/join/mgps/adapter/j$b;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object p2, p1, Lcom/join/mgps/adapter/j$b;->o:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 4
    iget-object p2, p1, Lcom/join/mgps/adapter/j$b;->p:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    iget-object p1, p1, Lcom/join/mgps/adapter/j$b;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 6
    :cond_0
    iget-object p2, p1, Lcom/join/mgps/adapter/j$b;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    iget-object p2, p1, Lcom/join/mgps/adapter/j$b;->o:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 9
    iget-object p2, p1, Lcom/join/mgps/adapter/j$b;->p:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p2, p1, Lcom/join/mgps/adapter/j$b;->p:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 11
    iget-object p2, p1, Lcom/join/mgps/adapter/j$b;->o:Landroid/widget/ProgressBar;

    invoke-virtual {p2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 12
    :goto_0
    iget-object p1, p1, Lcom/join/mgps/adapter/j$b;->l:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/j;->c(I)Lcom/join/mgps/business/CollectionBeanSubBusiness;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 19

    move-object/from16 v9, p0

    move/from16 v0, p1

    if-nez p2, :cond_0

    .line 1
    iget-object v1, v9, Lcom/join/mgps/adapter/j;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f0c05db

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2
    new-instance v2, Lcom/join/mgps/adapter/j$b;

    invoke-direct {v2, v9}, Lcom/join/mgps/adapter/j$b;-><init>(Lcom/join/mgps/adapter/j;)V

    const v3, 0x7f0908ca

    .line 3
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/join/mgps/adapter/j$b;->a:Landroid/view/View;

    const v3, 0x7f09014c

    .line 4
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v3, v2, Lcom/join/mgps/adapter/j$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v3, 0x7f091263

    .line 5
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, v2, Lcom/join/mgps/adapter/j$b;->c:Landroid/widget/FrameLayout;

    const v3, 0x7f090a39

    .line 6
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v3, v2, Lcom/join/mgps/adapter/j$b;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v3, 0x7f0905ee

    .line 7
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/join/mgps/adapter/j$b;->e:Landroid/widget/ImageView;

    const v3, 0x7f090a37

    .line 8
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/join/mgps/adapter/j$b;->f:Landroid/widget/TextView;

    const v3, 0x7f090cac

    .line 9
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v2, Lcom/join/mgps/adapter/j$b;->g:Landroid/widget/RelativeLayout;

    const v3, 0x7f090a3a

    .line 10
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/join/mgps/adapter/j$b;->h:Landroid/widget/TextView;

    const v3, 0x7f090a38

    .line 11
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/join/mgps/adapter/j$b;->j:Landroid/widget/TextView;

    const v3, 0x7f0908cd

    .line 12
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/join/mgps/adapter/j$b;->k:Landroid/widget/LinearLayout;

    const v3, 0x7f09100c

    .line 13
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/join/mgps/adapter/j$b;->l:Landroid/widget/LinearLayout;

    const v3, 0x7f0900ea

    .line 14
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/join/mgps/adapter/j$b;->m:Landroid/widget/TextView;

    const v3, 0x7f0909b2

    .line 15
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/join/mgps/adapter/j$b;->n:Landroid/widget/TextView;

    const v3, 0x7f090c59

    .line 16
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v2, Lcom/join/mgps/adapter/j$b;->o:Landroid/widget/ProgressBar;

    const v3, 0x7f090c60

    .line 17
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v2, Lcom/join/mgps/adapter/j$b;->p:Landroid/widget/ProgressBar;

    const v3, 0x7f0908be

    .line 18
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/join/mgps/adapter/j$b;->i:Landroid/view/View;

    .line 19
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v10, v1

    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/join/mgps/adapter/j$b;

    move-object/from16 v10, p2

    :goto_0
    move-object v11, v2

    const/16 v12, 0x8

    const/4 v13, 0x0

    if-nez v0, :cond_1

    .line 21
    iget-object v1, v11, Lcom/join/mgps/adapter/j$b;->a:Landroid/view/View;

    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 22
    :cond_1
    iget-object v1, v11, Lcom/join/mgps/adapter/j$b;->a:Landroid/view/View;

    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 23
    :goto_1
    iget-object v1, v9, Lcom/join/mgps/adapter/j;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 24
    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_top_video_url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    const/4 v15, 0x1

    if-eqz v1, :cond_3

    .line 25
    iget-object v1, v11, Lcom/join/mgps/adapter/j$b;->c:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_2

    .line 26
    iget-object v1, v11, Lcom/join/mgps/adapter/j$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_top_pic()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_top_video_url()Ljava/lang/String;

    move-result-object v1

    add-int/2addr v0, v15

    .line 28
    iget-object v2, v11, Lcom/join/mgps/adapter/j$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 29
    invoke-static {v1}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 30
    new-instance v2, Lcom/join/android/app/component/video/c$k;

    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_top_pic()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Lcom/join/android/app/component/video/c$k;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v1, v9, Lcom/join/mgps/adapter/j;->e:Lcom/join/android/app/component/video/c;

    new-array v3, v13, [Z

    invoke-virtual {v1, v0, v2, v3}, Lcom/join/android/app/component/video/c;->d(ILcom/join/android/app/component/video/c$k;[Z)V

    .line 32
    :cond_2
    iget-object v0, v11, Lcom/join/mgps/adapter/j$b;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v1, 0x7f080168

    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_info_top_pic()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 33
    :cond_3
    invoke-virtual {v14}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object v0

    .line 34
    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getGift_package_switch()I

    move-result v1

    if-ne v1, v15, :cond_4

    .line 35
    iget-object v1, v11, Lcom/join/mgps/adapter/j$b;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 36
    :cond_4
    iget-object v1, v11, Lcom/join/mgps/adapter/j$b;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    :goto_2
    iget-object v1, v11, Lcom/join/mgps/adapter/j$b;->f:Landroid/widget/TextView;

    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-object v1, v11, Lcom/join/mgps/adapter/j$b;->j:Landroid/widget/TextView;

    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-wide/high16 v3, 0x4090000000000000L    # 1024.0

    mul-double v1, v1, v3

    mul-double v1, v1, v3

    double-to-long v7, v1

    .line 40
    iget-object v1, v11, Lcom/join/mgps/adapter/j$b;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_count()I

    move-result v3

    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v5

    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v6

    iget-object v1, v11, Lcom/join/mgps/adapter/j$b;->l:Landroid/widget/LinearLayout;

    iget-object v13, v9, Lcom/join/mgps/adapter/j;->a:Landroid/content/Context;

    move-object/from16 v16, v1

    move-object/from16 v1, p0

    move-wide/from16 v17, v7

    move-object/from16 v7, v16

    move-object v8, v13

    invoke-virtual/range {v1 .. v8}, Lcom/join/mgps/adapter/j;->b(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 43
    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    move-result-object v1

    invoke-static {v1, v10, v0}, Lcom/join/mgps/Util/UtilsMy;->v2(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 44
    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getPlugin_num()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    invoke-virtual {v3}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 45
    iget-object v0, v11, Lcom/join/mgps/adapter/j$b;->h:Landroid/widget/TextView;

    const-string v1, "\u5f00\u59cb"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, v11, Lcom/join/mgps/adapter/j$b;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 47
    iget-object v0, v11, Lcom/join/mgps/adapter/j$b;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_8

    :cond_5
    const-string v1, "\u66f4\u65b0"

    const v2, 0x7f1100d2

    if-nez v0, :cond_a

    .line 48
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v11, v0, v3}, Lcom/join/mgps/adapter/j;->g(Lcom/join/mgps/adapter/j$b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 49
    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->e0(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 50
    iget-object v0, v9, Lcom/join/mgps/adapter/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v3, v9, Lcom/join/mgps/adapter/j;->a:Landroid/content/Context;

    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/join/android/app/common/utils/APKUtils;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 51
    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v3

    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_6

    const/4 v13, 0x0

    goto :goto_3

    :cond_6
    move v13, v0

    :goto_3
    if-eqz v13, :cond_8

    .line 52
    iget-object v0, v9, Lcom/join/mgps/adapter/j;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/android/app/common/utils/a;->g0(Landroid/content/Context;)Lcom/join/android/app/common/utils/a;

    move-result-object v0

    iget-object v3, v9, Lcom/join/mgps/adapter/j;->a:Landroid/content/Context;

    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getPackage_name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/join/android/app/common/utils/APKUtils;->k(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    move-result-object v0

    .line 53
    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v0}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    move-result v0

    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 54
    iget-object v0, v11, Lcom/join/mgps/adapter/j$b;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 55
    :cond_7
    iget-object v0, v11, Lcom/join/mgps/adapter/j$b;->h:Landroid/widget/TextView;

    iget-object v1, v9, Lcom/join/mgps/adapter/j;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 56
    :cond_8
    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 57
    iget-object v0, v11, Lcom/join/mgps/adapter/j$b;->h:Landroid/widget/TextView;

    iget-object v1, v11, Lcom/join/mgps/adapter/j$b;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    move-result v2

    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v3

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/join/mgps/adapter/j;->f(Landroid/widget/TextView;Landroid/widget/RelativeLayout;ILcom/join/mgps/dto/PayTagInfo;)V

    goto/16 :goto_8

    .line 58
    :cond_9
    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 59
    iget-object v0, v11, Lcom/join/mgps/adapter/j$b;->h:Landroid/widget/TextView;

    iget-object v1, v11, Lcom/join/mgps/adapter/j$b;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    move-result v2

    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v3

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/join/mgps/adapter/j;->f(Landroid/widget/TextView;Landroid/widget/RelativeLayout;ILcom/join/mgps/dto/PayTagInfo;)V

    goto/16 :goto_8

    .line 60
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " dd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "infoo"

    invoke-static {v4, v3}, Lcom/join/mgps/Util/t0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    move-result v3

    .line 62
    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v4

    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x2b

    if-lez v4, :cond_b

    const/16 v3, 0x2b

    :cond_b
    if-eqz v3, :cond_13

    const/16 v4, 0x1b

    const-string v6, "\u6682\u505c\u4e2d"

    if-eq v3, v4, :cond_12

    const/4 v4, 0x2

    const-wide/16 v7, 0x0

    const-string v12, "/"

    if-eq v3, v4, :cond_10

    const/4 v4, 0x3

    if-eq v3, v4, :cond_e

    const/4 v4, 0x5

    if-eq v3, v4, :cond_d

    const/4 v4, 0x6

    if-eq v3, v4, :cond_e

    const/4 v4, 0x7

    if-eq v3, v4, :cond_13

    const/16 v4, 0x2a

    if-eq v3, v4, :cond_d

    if-eq v3, v5, :cond_c

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_8

    .line 63
    :pswitch_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v11, v1, v2}, Lcom/join/mgps/adapter/j;->g(Lcom/join/mgps/adapter/j$b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 64
    iget-object v1, v11, Lcom/join/mgps/adapter/j$b;->m:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v17 .. v18}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v18}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    iget-object v1, v11, Lcom/join/mgps/adapter/j$b;->n:Landroid/widget/TextView;

    const-string v2, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, v11, Lcom/join/mgps/adapter/j$b;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 67
    iget-object v0, v11, Lcom/join/mgps/adapter/j$b;->h:Landroid/widget/TextView;

    const-string v1, "\u89e3\u538b"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 68
    :pswitch_1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v11, v1, v2}, Lcom/join/mgps/adapter/j;->g(Lcom/join/mgps/adapter/j$b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 69
    iget-object v1, v11, Lcom/join/mgps/adapter/j$b;->m:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v17 .. v18}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v18}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v1, v11, Lcom/join/mgps/adapter/j$b;->n:Landroid/widget/TextView;

    const-string v2, "\u89e3\u538b\u4e2d.."

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v1, v11, Lcom/join/mgps/adapter/j$b;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 72
    iget-object v0, v11, Lcom/join/mgps/adapter/j$b;->h:Landroid/widget/TextView;

    const-string v1, "\u89e3\u538b\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 73
    :pswitch_2
    iget-object v0, v11, Lcom/join/mgps/adapter/j$b;->h:Landroid/widget/TextView;

    const-string v1, "\u5b89\u88c5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v11, v0, v1}, Lcom/join/mgps/adapter/j;->g(Lcom/join/mgps/adapter/j$b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_8

    .line 75
    :pswitch_3
    iget-object v1, v11, Lcom/join/mgps/adapter/j$b;->h:Landroid/widget/TextView;

    const-string v2, "\u7b49\u5f85"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v11, v1, v1}, Lcom/join/mgps/adapter/j;->g(Lcom/join/mgps/adapter/j$b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 77
    iget-object v1, v11, Lcom/join/mgps/adapter/j$b;->m:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v18}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    :try_start_0
    iget-object v1, v11, Lcom/join/mgps/adapter/j$b;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    :goto_4
    iget-object v0, v11, Lcom/join/mgps/adapter/j$b;->n:Landroid/widget/TextView;

    const-string v1, "\u7b49\u5f85\u4e2d"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 81
    :pswitch_4
    iget-object v0, v11, Lcom/join/mgps/adapter/j$b;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v11, v0, v1}, Lcom/join/mgps/adapter/j;->g(Lcom/join/mgps/adapter/j$b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_8

    .line 83
    :cond_c
    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_14

    .line 84
    iget-object v0, v11, Lcom/join/mgps/adapter/j$b;->h:Landroid/widget/TextView;

    iget-object v1, v9, Lcom/join/mgps/adapter/j;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110261

    new-array v3, v15, [Ljava/lang/Object;

    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/join/mgps/dto/PayTagInfo;->getPayGameAmount()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 85
    :cond_d
    iget-object v0, v11, Lcom/join/mgps/adapter/j$b;->h:Landroid/widget/TextView;

    iget-object v1, v9, Lcom/join/mgps/adapter/j;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v11, v0, v0}, Lcom/join/mgps/adapter/j;->g(Lcom/join/mgps/adapter/j$b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_8

    .line 87
    :cond_e
    iget-object v1, v11, Lcom/join/mgps/adapter/j$b;->h:Landroid/widget/TextView;

    const-string v2, "\u7ee7\u7eed"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v11, v1, v1}, Lcom/join/mgps/adapter/j;->g(Lcom/join/mgps/adapter/j$b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 89
    :try_start_1
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v1

    cmp-long v3, v1, v7

    if-nez v3, :cond_f

    .line 90
    iget-object v1, v11, Lcom/join/mgps/adapter/j$b;->m:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v18}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 91
    :cond_f
    iget-object v1, v11, Lcom/join/mgps/adapter/j$b;->m:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v18}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :goto_5
    iget-object v1, v11, Lcom/join/mgps/adapter/j$b;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    move-exception v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    :goto_6
    iget-object v0, v11, Lcom/join/mgps/adapter/j$b;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    .line 95
    :cond_10
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->C3(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 96
    iget-object v1, v11, Lcom/join/mgps/adapter/j$b;->h:Landroid/widget/TextView;

    const-string v2, "\u6682\u505c"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v11, v1, v1}, Lcom/join/mgps/adapter/j;->g(Lcom/join/mgps/adapter/j$b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 98
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    move-result-wide v1

    cmp-long v3, v1, v7

    if-nez v3, :cond_11

    .line 99
    iget-object v1, v11, Lcom/join/mgps/adapter/j$b;->m:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v18}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 100
    :cond_11
    iget-object v1, v11, Lcom/join/mgps/adapter/j$b;->m:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {v17 .. v18}, Lcom/join/mgps/Util/UtilsMy;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    :goto_7
    iget-object v1, v11, Lcom/join/mgps/adapter/j$b;->o:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 102
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    move-result-object v0

    .line 103
    iget-object v1, v11, Lcom/join/mgps/adapter/j$b;->n:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/S"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 104
    :cond_12
    iget-object v0, v11, Lcom/join/mgps/adapter/j$b;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 105
    :cond_13
    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v0

    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->m0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 106
    iget-object v0, v11, Lcom/join/mgps/adapter/j$b;->h:Landroid/widget/TextView;

    iget-object v1, v11, Lcom/join/mgps/adapter/j$b;->g:Landroid/widget/RelativeLayout;

    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_status()I

    move-result v2

    invoke-virtual {v14}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    move-result-object v3

    invoke-virtual {v9, v0, v1, v2, v3}, Lcom/join/mgps/adapter/j;->f(Landroid/widget/TextView;Landroid/widget/RelativeLayout;ILcom/join/mgps/dto/PayTagInfo;)V

    .line 107
    iget-object v0, v11, Lcom/join/mgps/adapter/j$b;->h:Landroid/widget/TextView;

    iget-object v1, v9, Lcom/join/mgps/adapter/j;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v9, v11, v0, v1}, Lcom/join/mgps/adapter/j;->g(Lcom/join/mgps/adapter/j$b;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 109
    :cond_14
    :goto_8
    iget-object v0, v11, Lcom/join/mgps/adapter/j$b;->g:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/join/mgps/adapter/j$a;

    invoke-direct {v1, v9, v14}, Lcom/join/mgps/adapter/j$a;-><init>(Lcom/join/mgps/adapter/j;Lcom/join/mgps/business/CollectionBeanSubBusiness;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v10

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
