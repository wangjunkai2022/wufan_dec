.class Lcom/join/mgps/adapter/h4$y0;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "PapaMainAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/h4;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/join/mgps/adapter/h4$i2;

.field final synthetic c:Lcom/join/mgps/adapter/h4;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/h4;Ljava/util/List;Lcom/join/mgps/adapter/h4$i2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/h4$y0;->c:Lcom/join/mgps/adapter/h4;

    iput-object p2, p0, Lcom/join/mgps/adapter/h4$y0;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/join/mgps/adapter/h4$y0;->b:Lcom/join/mgps/adapter/h4$i2;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/h4$y0;->c:Lcom/join/mgps/adapter/h4;

    iget-object p2, p0, Lcom/join/mgps/adapter/h4$y0;->a:Ljava/util/List;

    iget-object v0, p0, Lcom/join/mgps/adapter/h4$y0;->b:Lcom/join/mgps/adapter/h4$i2;

    iget-object v0, v0, Lcom/join/mgps/adapter/h4$i2;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {p1, p2, v0}, Lcom/join/mgps/adapter/h4;->x(Lcom/join/mgps/adapter/h4;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    return-void
.end method
