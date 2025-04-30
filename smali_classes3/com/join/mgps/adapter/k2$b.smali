.class Lcom/join/mgps/adapter/k2$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "HomeGameListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/k2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/LinearLayout;

.field d:Landroid/widget/LinearLayout;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field final synthetic h:Lcom/join/mgps/adapter/k2;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/k2;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/adapter/k2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/k2$b;->h:Lcom/join/mgps/adapter/k2;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0909eb

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/k2$b;->a:Landroid/view/View;

    const p1, 0x7f09100f

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/k2$b;->b:Landroid/widget/TextView;

    const p1, 0x7f09068d

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/k2$b;->c:Landroid/widget/LinearLayout;

    const p1, 0x7f09068e

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/k2$b;->d:Landroid/widget/LinearLayout;

    const p1, 0x7f090acd

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/k2$b;->e:Landroid/widget/TextView;

    const p1, 0x7f090b51

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/k2$b;->f:Landroid/widget/TextView;

    const p1, 0x7f0904e7

    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/k2$b;->g:Landroid/widget/TextView;

    return-void
.end method
