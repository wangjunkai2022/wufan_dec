.class public Lcom/join/mgps/adapter/k;
.super Landroid/widget/BaseAdapter;
.source "DetailCheckPointAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/k$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetailCheckPoint;",
            ">;"
        }
    .end annotation
.end field

.field b:Landroid/content/Context;

.field c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameDetailCheckPoint;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/adapter/k;->a:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/k;->b:Landroid/content/Context;

    .line 4
    iput p3, p0, Lcom/join/mgps/adapter/k;->c:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/k;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/adapter/k;->b:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c028c

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 2
    new-instance p3, Lcom/join/mgps/adapter/k$a;

    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/k$a;-><init>(Lcom/join/mgps/adapter/k;)V

    const v0, 0x7f090687

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p3, Lcom/join/mgps/adapter/k$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f090acd

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/join/mgps/adapter/k$a;->b:Landroid/widget/TextView;

    .line 5
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/join/mgps/adapter/k$a;

    .line 7
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/k;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GameDetailCheckPoint;

    .line 8
    iget-object v0, p3, Lcom/join/mgps/adapter/k$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDetailCheckPoint;->getPic()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/MyImageLoader;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 9
    iget-object v0, p3, Lcom/join/mgps/adapter/k$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/a;

    invoke-virtual {v0}, Lcom/facebook/drawee/generic/a;->o()Lcom/facebook/drawee/generic/RoundingParams;

    move-result-object v0

    if-nez v0, :cond_1

    .line 10
    new-instance v0, Lcom/facebook/drawee/generic/RoundingParams;

    invoke-direct {v0}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/adapter/k;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0712ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v1, v1, v2, v2}, Lcom/facebook/drawee/generic/RoundingParams;->q(FFFF)Lcom/facebook/drawee/generic/RoundingParams;

    .line 13
    iget-object v1, p3, Lcom/join/mgps/adapter/k$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v1}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lk0/b;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/generic/a;

    invoke-virtual {v1, v0}, Lcom/facebook/drawee/generic/a;->V(Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 14
    iget-object p3, p3, Lcom/join/mgps/adapter/k$a;->b:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameDetailCheckPoint;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    :goto_1
    return-object p2
.end method
