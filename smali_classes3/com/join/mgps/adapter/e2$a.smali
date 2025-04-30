.class Lcom/join/mgps/adapter/e2$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GameRecommendAdapter1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/e2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/facebook/drawee/view/SimpleDraweeView;

.field final synthetic b:Lcom/join/mgps/adapter/e2;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/e2;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/e2$a;->b:Lcom/join/mgps/adapter/e2;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f09015b

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/adapter/e2$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    return-void
.end method
