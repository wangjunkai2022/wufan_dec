.class public Lcom/join/mgps/adapter/b2$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GameRecommendAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/b2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field a:Lcom/facebook/drawee/view/SimpleDraweeView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/LinearLayout;

.field final synthetic d:Lcom/join/mgps/adapter/b2;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/b2;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/b2$b;->d:Lcom/join/mgps/adapter/b2;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090797

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/adapter/b2$b;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f090799

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/b2$b;->b:Landroid/widget/TextView;

    const p1, 0x7f090798

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/b2$b;->c:Landroid/widget/LinearLayout;

    return-void
.end method
