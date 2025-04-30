.class public Lcom/join/mgps/activity/l0$z;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "GamedetialModleFiveFragemnt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/l0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "z"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/l0;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/l0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/l0$z;->a:Lcom/join/mgps/activity/l0;

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
    iget-object v0, p0, Lcom/join/mgps/activity/l0$z;->a:Lcom/join/mgps/activity/l0;

    invoke-static {v0}, Lcom/join/mgps/activity/l0;->Z(Lcom/join/mgps/activity/l0;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getPageWidth(I)F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/l0$z;->a:Lcom/join/mgps/activity/l0;

    invoke-static {v0}, Lcom/join/mgps/activity/l0;->Z(Lcom/join/mgps/activity/l0;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/l0$a0;

    invoke-static {v0}, Lcom/join/mgps/activity/l0$a0;->a(Lcom/join/mgps/activity/l0$a0;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/join/mgps/activity/l0$z;->a:Lcom/join/mgps/activity/l0;

    iget-boolean v1, v0, Lcom/join/mgps/activity/l0;->C0:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/join/mgps/activity/l0;->Z(Lcom/join/mgps/activity/l0;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/l0$a0;

    invoke-static {v0}, Lcom/join/mgps/activity/l0$a0;->b(Lcom/join/mgps/activity/l0$a0;)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/l0$z;->a:Lcom/join/mgps/activity/l0;

    invoke-static {v0}, Lcom/join/mgps/activity/l0;->Z(Lcom/join/mgps/activity/l0;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/l0$a0;

    invoke-static {v0}, Lcom/join/mgps/activity/l0$a0;->b(Lcom/join/mgps/activity/l0$a0;)I

    move-result v0

    if-ne v0, v2, :cond_1

    const p1, 0x3ea8f5c3    # 0.33f

    return p1

    .line 3
    :cond_1
    invoke-super {p0, p1}, Landroidx/viewpager/widget/PagerAdapter;->getPageWidth(I)F

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/l0$z;->a:Lcom/join/mgps/activity/l0;

    invoke-static {v0}, Lcom/join/mgps/activity/l0;->Z(Lcom/join/mgps/activity/l0;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/activity/l0$a0;

    invoke-static {v0}, Lcom/join/mgps/activity/l0$a0;->c(Lcom/join/mgps/activity/l0$a0;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/l0$z;->a:Lcom/join/mgps/activity/l0;

    invoke-static {p1}, Lcom/join/mgps/activity/l0;->Z(Lcom/join/mgps/activity/l0;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/l0$a0;

    invoke-virtual {p1}, Lcom/join/mgps/activity/l0$a0;->e()Landroid/view/View;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/join/mgps/activity/l0$z$a;

    invoke-direct {v0, p0, p2}, Lcom/join/mgps/activity/l0$z$a;-><init>(Lcom/join/mgps/activity/l0$z;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
