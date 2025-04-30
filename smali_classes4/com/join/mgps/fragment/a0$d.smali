.class Lcom/join/mgps/fragment/a0$d;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DIscoveryTabFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/LinearLayout;

.field g:Lcom/facebook/drawee/view/SimpleDraweeView;

.field final synthetic h:Lcom/join/mgps/fragment/a0;


# direct methods
.method public constructor <init>(Lcom/join/mgps/fragment/a0;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/fragment/a0;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/a0$d;->h:Lcom/join/mgps/fragment/a0;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0902eb

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/fragment/a0$d;->a:Landroid/widget/TextView;

    const p1, 0x7f091237

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/fragment/a0$d;->b:Landroid/widget/TextView;

    const p1, 0x7f090ff4

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/fragment/a0$d;->c:Landroid/widget/TextView;

    const p1, 0x7f091272    # 1.822E38f

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/fragment/a0$d;->d:Landroid/widget/TextView;

    const p1, 0x7f090699

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/fragment/a0$d;->e:Landroid/widget/TextView;

    const p1, 0x7f091232

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/fragment/a0$d;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f0909eb

    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/fragment/a0$d;->f:Landroid/widget/LinearLayout;

    return-void
.end method
