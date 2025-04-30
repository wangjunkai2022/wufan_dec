.class Lcom/join/mgps/fragment/a0$c;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DIscoveryTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/LinearLayout;

.field f:Lcom/facebook/drawee/view/SimpleDraweeView;

.field final synthetic g:Lcom/join/mgps/fragment/a0;


# direct methods
.method public constructor <init>(Lcom/join/mgps/fragment/a0;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/fragment/a0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/a0$c;->g:Lcom/join/mgps/fragment/a0;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0902eb

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/fragment/a0$c;->a:Landroid/widget/TextView;

    const p1, 0x7f090585

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/fragment/a0$c;->b:Landroid/widget/TextView;

    const p1, 0x7f090dfa

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/fragment/a0$c;->c:Landroid/widget/TextView;

    const p1, 0x7f0902a5

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/fragment/a0$c;->d:Landroid/widget/TextView;

    const p1, 0x7f09069a

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/fragment/a0$c;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f0909eb

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/fragment/a0$c;->e:Landroid/widget/LinearLayout;

    return-void
.end method
