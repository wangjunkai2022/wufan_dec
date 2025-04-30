.class Lme/relex/circleindicator/CircleIndicator2$b;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "CircleIndicator2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/relex/circleindicator/CircleIndicator2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lme/relex/circleindicator/CircleIndicator2;


# direct methods
.method constructor <init>(Lme/relex/circleindicator/CircleIndicator2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator2$b;->a:Lme/relex/circleindicator/CircleIndicator2;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 2
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator2$b;->a:Lme/relex/circleindicator/CircleIndicator2;

    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator2;->i(Lme/relex/circleindicator/CircleIndicator2;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator2$b;->a:Lme/relex/circleindicator/CircleIndicator2;

    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator2;->i(Lme/relex/circleindicator/CircleIndicator2;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    iget-object v1, p0, Lme/relex/circleindicator/CircleIndicator2$b;->a:Lme/relex/circleindicator/CircleIndicator2;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ne v0, v1, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object v1, p0, Lme/relex/circleindicator/CircleIndicator2$b;->a:Lme/relex/circleindicator/CircleIndicator2;

    iget v2, v1, Lme/relex/circleindicator/BaseCircleIndicator;->j:I

    if-ge v2, v0, :cond_3

    .line 7
    invoke-static {v1}, Lme/relex/circleindicator/CircleIndicator2;->i(Lme/relex/circleindicator/CircleIndicator2;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v1, v0}, Lme/relex/circleindicator/CircleIndicator2;->m(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I

    move-result v0

    iput v0, v1, Lme/relex/circleindicator/BaseCircleIndicator;->j:I

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    .line 8
    iput v0, v1, Lme/relex/circleindicator/BaseCircleIndicator;->j:I

    .line 9
    :goto_1
    iget-object v0, p0, Lme/relex/circleindicator/CircleIndicator2$b;->a:Lme/relex/circleindicator/CircleIndicator2;

    invoke-static {v0}, Lme/relex/circleindicator/CircleIndicator2;->j(Lme/relex/circleindicator/CircleIndicator2;)V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    .line 2
    invoke-virtual {p0}, Lme/relex/circleindicator/CircleIndicator2$b;->onChanged()V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(IILjava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lme/relex/circleindicator/CircleIndicator2$b;->onChanged()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 2
    invoke-virtual {p0}, Lme/relex/circleindicator/CircleIndicator2$b;->onChanged()V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeMoved(III)V

    .line 2
    invoke-virtual {p0}, Lme/relex/circleindicator/CircleIndicator2$b;->onChanged()V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    .line 2
    invoke-virtual {p0}, Lme/relex/circleindicator/CircleIndicator2$b;->onChanged()V

    return-void
.end method
