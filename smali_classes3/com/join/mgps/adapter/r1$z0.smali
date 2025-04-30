.class Lcom/join/mgps/adapter/r1$z0;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "GameDetialModleThreeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "z0"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/r1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/r1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/r1$z0;->a:Lcom/join/mgps/adapter/r1;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/r1$z0;->a:Lcom/join/mgps/adapter/r1;

    invoke-static {v0}, Lcom/join/mgps/adapter/r1;->k(Lcom/join/mgps/adapter/r1;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/r1$z0;->a:Lcom/join/mgps/adapter/r1;

    invoke-static {v0}, Lcom/join/mgps/adapter/r1;->k(Lcom/join/mgps/adapter/r1;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/r1$z0;->a:Lcom/join/mgps/adapter/r1;

    invoke-static {p1}, Lcom/join/mgps/adapter/r1;->k(Lcom/join/mgps/adapter/r1;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const/4 v0, -0x2

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const/4 v0, -0x1

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5
    new-instance p2, Lcom/join/mgps/adapter/r1$z0$a;

    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/r1$z0$a;-><init>(Lcom/join/mgps/adapter/r1$z0;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
