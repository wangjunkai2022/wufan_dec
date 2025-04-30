.class Lme/relex/circleindicator/CircleIndicator2$a;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
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
    iput-object p1, p0, Lme/relex/circleindicator/CircleIndicator2$a;->a:Lme/relex/circleindicator/CircleIndicator2;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    iget-object p2, p0, Lme/relex/circleindicator/CircleIndicator2$a;->a:Lme/relex/circleindicator/CircleIndicator2;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p2, p1}, Lme/relex/circleindicator/CircleIndicator2;->m(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p2, p0, Lme/relex/circleindicator/CircleIndicator2$a;->a:Lme/relex/circleindicator/CircleIndicator2;

    invoke-virtual {p2, p1}, Lme/relex/circleindicator/CircleIndicator2;->b(I)V

    return-void
.end method
