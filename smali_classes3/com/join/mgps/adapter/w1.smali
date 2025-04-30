.class public Lcom/join/mgps/adapter/w1;
.super Landroid/widget/BaseAdapter;
.source "GameMainNewDynamicEntranceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/w1$a;,
        Lcom/join/mgps/adapter/w1$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DynamicEntranceBean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/join/mgps/adapter/w1$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/join/mgps/adapter/w1$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/DynamicEntranceBean;",
            ">;",
            "Lcom/join/mgps/adapter/w1$a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/w1;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/w1;->b:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/join/mgps/adapter/w1;->c:Lcom/join/mgps/adapter/w1$a;

    return-void
.end method

.method public static synthetic a(Lcom/join/mgps/adapter/w1;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/w1;->d(ILandroid/view/View;)V

    return-void
.end method

.method private synthetic d(ILandroid/view/View;)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/w1;->c:Lcom/join/mgps/adapter/w1$a;

    iget-object v0, p0, Lcom/join/mgps/adapter/w1;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/DynamicEntranceBean;

    invoke-interface {p2, p1}, Lcom/join/mgps/adapter/w1$a;->f0(Lcom/join/mgps/dto/DynamicEntranceBean;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/w1;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public c(I)Lcom/join/mgps/dto/DynamicEntranceBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/w1;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/DynamicEntranceBean;

    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/w1;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/w1;->c(I)Lcom/join/mgps/dto/DynamicEntranceBean;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/w1;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c0309

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/join/mgps/adapter/w1$b;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/w1$b;-><init>(Lcom/join/mgps/adapter/w1;)V

    const v0, 0x7f090795

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/join/mgps/adapter/w1$b;->b(Lcom/join/mgps/adapter/w1$b;Landroid/view/View;)Landroid/view/View;

    const v0, 0x7f090794

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/join/mgps/adapter/w1$b;->d(Lcom/join/mgps/adapter/w1$b;Landroid/widget/TextView;)Landroid/widget/TextView;

    const v0, 0x7f090796

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p3, v0}, Lcom/join/mgps/adapter/w1$b;->f(Lcom/join/mgps/adapter/w1$b;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 6
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/w1$b;

    .line 8
    :goto_0
    invoke-static {p3}, Lcom/join/mgps/adapter/w1$b;->c(Lcom/join/mgps/adapter/w1$b;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/w1;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/DynamicEntranceBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/DynamicEntranceBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/adapter/w1;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/DynamicEntranceBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/DynamicEntranceBean;->getTips()Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->h(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    invoke-static {p3}, Lcom/join/mgps/adapter/w1$b;->e(Lcom/join/mgps/adapter/w1$b;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    invoke-static {p3}, Lcom/join/mgps/adapter/w1$b;->e(Lcom/join/mgps/adapter/w1$b;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 13
    :cond_2
    :goto_1
    invoke-static {p3}, Lcom/join/mgps/adapter/w1$b;->e(Lcom/join/mgps/adapter/w1$b;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    :goto_2
    invoke-static {p3}, Lcom/join/mgps/adapter/w1$b;->a(Lcom/join/mgps/adapter/w1$b;)Landroid/view/View;

    move-result-object p3

    new-instance v0, Lcom/join/mgps/adapter/v1;

    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/v1;-><init>(Lcom/join/mgps/adapter/w1;I)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
