.class Lcom/join/mgps/adapter/r5$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SimulatorExitPlayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/r5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/facebook/drawee/view/SimpleDraweeView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/view/View;

.field g:Landroid/view/View;

.field h:Landroid/view/View;

.field i:Landroid/view/View;

.field j:Landroid/widget/LinearLayout;

.field final synthetic k:Lcom/join/mgps/adapter/r5;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/r5;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/adapter/r5;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/r5$a;->k:Lcom/join/mgps/adapter/r5;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090709

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/adapter/r5$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f090304

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/r5$a;->b:Landroid/widget/TextView;

    const p1, 0x7f090acd

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/r5$a;->c:Landroid/widget/TextView;

    const p1, 0x7f090340

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/r5$a;->d:Landroid/widget/TextView;

    const p1, 0x7f090a5b

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/r5$a;->f:Landroid/view/View;

    const p1, 0x7f090a97

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/r5$a;->g:Landroid/view/View;

    const p1, 0x7f09038e

    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/r5$a;->h:Landroid/view/View;

    const p1, 0x7f090cf0

    .line 10
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/r5$a;->i:Landroid/view/View;

    const p1, 0x7f090dbc

    .line 11
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/r5$a;->e:Landroid/widget/TextView;

    const p1, 0x7f090f1f

    .line 12
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/r5$a;->j:Landroid/widget/LinearLayout;

    return-void
.end method
