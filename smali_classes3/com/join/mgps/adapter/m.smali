.class public Lcom/join/mgps/adapter/m;
.super Landroid/widget/BaseAdapter;
.source "DetialimoreServiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/m$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ServiceState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/adapter/m;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ServiceState;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/m;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/adapter/m;->b:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/m;->b:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/m;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 1
    iget-object p3, p0, Lcom/join/mgps/adapter/m;->b:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ServiceState;

    if-nez p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/join/mgps/adapter/m;->a:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c028b

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 3
    new-instance p3, Lcom/join/mgps/adapter/m$a;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/m$a;-><init>(Lcom/join/mgps/adapter/m;)V

    const v0, 0x7f090f1a

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/m$a;->a:Landroid/widget/TextView;

    const v0, 0x7f09032b

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/m$a;->b:Landroid/widget/TextView;

    const v0, 0x7f090ff4

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/m$a;->c:Landroid/widget/TextView;

    const v0, 0x7f090e1f

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/m$a;->d:Landroid/widget/TextView;

    .line 8
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/m$a;

    .line 10
    :goto_0
    iget-object v0, p3, Lcom/join/mgps/adapter/m$a;->a:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ServiceState;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "\u5f00\u670d"

    goto :goto_1

    :cond_1
    const-string v1, "\u5408\u670d"

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p3, Lcom/join/mgps/adapter/m$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ServiceState;->getAdd_time()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/join/mgps/Util/x;->C(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p3, Lcom/join/mgps/adapter/m$a;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ServiceState;->getAdd_time()J

    move-result-wide v1

    const-string v3, "HH:mm"

    invoke-static {v1, v2, v3}, Lcom/join/mgps/Util/x;->x(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p3, p3, Lcom/join/mgps/adapter/m$a;->d:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ServiceState;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
