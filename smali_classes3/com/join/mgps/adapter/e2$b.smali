.class Lcom/join/mgps/adapter/e2$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GameRecommendAdapter1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/e2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/GridView;

.field d:Lcom/facebook/drawee/view/SimpleDraweeView;

.field e:Landroid/view/View;

.field final synthetic f:Lcom/join/mgps/adapter/e2;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/e2;Landroid/view/View;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/e2$b;->f:Lcom/join/mgps/adapter/e2;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0912a7

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/adapter/e2$b;->a:Landroid/widget/TextView;

    const v0, 0x7f091297

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/join/mgps/adapter/e2$b;->b:Landroid/widget/TextView;

    const v0, 0x7f091299    # 1.822008E38f

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/join/mgps/adapter/e2$b;->c:Landroid/widget/GridView;

    const v0, 0x7f09129a

    .line 6
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/join/mgps/adapter/e2$b;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f09020a

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/join/mgps/adapter/e2$b;->e:Landroid/view/View;

    .line 8
    new-instance p2, Lcom/join/mgps/adapter/y2;

    invoke-static {p1}, Lcom/join/mgps/adapter/e2;->e(Lcom/join/mgps/adapter/e2;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/join/mgps/adapter/e2;->d:Ljava/lang/String;

    invoke-direct {p2, v0, v1}, Lcom/join/mgps/adapter/y2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/join/mgps/adapter/e2;->d(Lcom/join/mgps/adapter/e2;Lcom/join/mgps/adapter/y2;)Lcom/join/mgps/adapter/y2;

    .line 9
    iget-object p2, p0, Lcom/join/mgps/adapter/e2$b;->c:Landroid/widget/GridView;

    invoke-static {p1}, Lcom/join/mgps/adapter/e2;->c(Lcom/join/mgps/adapter/e2;)Lcom/join/mgps/adapter/y2;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
