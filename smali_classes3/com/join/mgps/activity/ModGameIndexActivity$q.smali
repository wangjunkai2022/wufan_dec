.class Lcom/join/mgps/activity/ModGameIndexActivity$q;
.super Ljava/lang/Object;
.source "ModGameIndexActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ModGameIndexActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ModGameIndexActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ModGameIndexActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$q;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$q;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ModGameIndexActivity;->z:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$q;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    iget-object v1, v1, Lcom/join/mgps/activity/ModGameIndexActivity;->y:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v3

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    move-result v5

    .line 6
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v6

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 7
    :goto_1
    iget-object v7, p0, Lcom/join/mgps/activity/ModGameIndexActivity$q;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {v7}, Lcom/join/mgps/activity/ModGameIndexActivity;->d1(Lcom/join/mgps/activity/ModGameIndexActivity;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    move v3, v5

    .line 8
    :goto_2
    iget-object v5, p0, Lcom/join/mgps/activity/ModGameIndexActivity$q;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {v5}, Lcom/join/mgps/activity/ModGameIndexActivity;->e1(Lcom/join/mgps/activity/ModGameIndexActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 9
    iget-object v5, p0, Lcom/join/mgps/activity/ModGameIndexActivity$q;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {v5}, Lcom/join/mgps/activity/ModGameIndexActivity;->d1(Lcom/join/mgps/activity/ModGameIndexActivity;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move v4, v6

    .line 10
    :goto_3
    iget-object v5, p0, Lcom/join/mgps/activity/ModGameIndexActivity$q;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {v5}, Lcom/join/mgps/activity/ModGameIndexActivity;->e1(Lcom/join/mgps/activity/ModGameIndexActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 11
    iget-object v5, p0, Lcom/join/mgps/activity/ModGameIndexActivity$q;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {v5}, Lcom/join/mgps/activity/ModGameIndexActivity;->e1(Lcom/join/mgps/activity/ModGameIndexActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v7

    if-ne v4, v5, :cond_5

    .line 12
    iget-object v4, p0, Lcom/join/mgps/activity/ModGameIndexActivity$q;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {v4}, Lcom/join/mgps/activity/ModGameIndexActivity;->d1(Lcom/join/mgps/activity/ModGameIndexActivity;)Z

    move-result v4

    const/high16 v5, 0x42700000    # 60.0f

    const/high16 v6, 0x42c80000    # 100.0f

    if-eqz v4, :cond_4

    if-eqz v0, :cond_5

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$q;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/ModGameIndexActivity;->e1(Lcom/join/mgps/activity/ModGameIndexActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 14
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 16
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v6

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    cmpl-float v0, v1, v5

    if-lez v0, :cond_5

    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$q;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->e1(Lcom/join/mgps/activity/ModGameIndexActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v7

    move v3, v0

    goto :goto_4

    :cond_4
    if-eqz v1, :cond_5

    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$q;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->e1(Lcom/join/mgps/activity/ModGameIndexActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v7

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 20
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 22
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v6

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    cmpl-float v0, v1, v5

    if-lez v0, :cond_5

    .line 24
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$q;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->e1(Lcom/join/mgps/activity/ModGameIndexActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    :cond_5
    :goto_4
    if-gt v2, v3, :cond_7

    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/ModGameIndexActivity$q;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ModGameIndexActivity;->e1(Lcom/join/mgps/activity/ModGameIndexActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/business/CollectionBeanSubBusiness;

    .line 26
    invoke-virtual {v0}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->isHasExposure()Z

    move-result v1

    if-nez v1, :cond_6

    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$q;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/ModGameIndexActivity;->d1(Lcom/join/mgps/activity/ModGameIndexActivity;)Z

    move-result v4

    invoke-static {v1, v0, v2, v4}, Lcom/join/mgps/activity/ModGameIndexActivity;->f1(Lcom/join/mgps/activity/ModGameIndexActivity;Lcom/join/mgps/business/CollectionBeanSubBusiness;IZ)V

    .line 28
    invoke-virtual {v0, v7}, Lcom/join/mgps/business/CollectionBeanSubBusiness;->setHasExposure(Z)V

    .line 29
    iget-object v1, p0, Lcom/join/mgps/activity/ModGameIndexActivity$q;->a:Lcom/join/mgps/activity/ModGameIndexActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/ModGameIndexActivity;->e1(Lcom/join/mgps/activity/ModGameIndexActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    return-void
.end method
