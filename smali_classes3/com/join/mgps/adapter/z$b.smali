.class Lcom/join/mgps/adapter/z$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FriendAddAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Lcom/facebook/drawee/view/SimpleDraweeView;

.field final synthetic e:Lcom/join/mgps/adapter/z;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/z;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/adapter/z;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/z$b;->e:Lcom/join/mgps/adapter/z;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090acd

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/z$b;->a:Landroid/widget/TextView;

    const p1, 0x7f090340

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/z$b;->b:Landroid/widget/TextView;

    const p1, 0x7f090205

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/z$b;->c:Landroid/widget/TextView;

    const p1, 0x7f090126

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/adapter/z$b;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    return-void
.end method
