.class Lcom/join/mgps/adapter/v5$c;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SimulatorExitPlayFriendAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/v5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/view/View;

.field e:Landroid/view/View;

.field f:Landroid/view/View;

.field g:Landroid/view/View;

.field h:Lcom/facebook/drawee/view/SimpleDraweeView;

.field i:Landroid/widget/ImageView;

.field j:Landroid/widget/ImageView;

.field k:Landroid/widget/ImageView;

.field l:Landroid/view/View;

.field final synthetic m:Lcom/join/mgps/adapter/v5;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/v5;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/adapter/v5;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/v5$c;->m:Lcom/join/mgps/adapter/v5;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090857

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/v5$c;->b:Landroid/widget/TextView;

    const p1, 0x7f090192

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/v5$c;->c:Landroid/widget/TextView;

    const p1, 0x7f090acd

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/v5$c;->a:Landroid/widget/TextView;

    const p1, 0x7f090126

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/adapter/v5$c;->h:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f090a5b

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/v5$c;->d:Landroid/view/View;

    const p1, 0x7f090a97

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/v5$c;->e:Landroid/view/View;

    const p1, 0x7f09038e

    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/v5$c;->f:Landroid/view/View;

    const p1, 0x7f090cf0

    .line 10
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/v5$c;->g:Landroid/view/View;

    const p1, 0x7f0908bb

    .line 11
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/adapter/v5$c;->i:Landroid/widget/ImageView;

    const p1, 0x7f090681

    .line 12
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/adapter/v5$c;->j:Landroid/widget/ImageView;

    const p1, 0x7f090682

    .line 13
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/adapter/v5$c;->k:Landroid/widget/ImageView;

    const p1, 0x7f091293

    .line 14
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/v5$c;->l:Landroid/view/View;

    return-void
.end method
