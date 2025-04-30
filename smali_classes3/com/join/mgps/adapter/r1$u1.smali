.class Lcom/join/mgps/adapter/r1$u1;
.super Lt1/a;
.source "GameDetialModleThreeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "u1"
.end annotation


# instance fields
.field public a:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Lcom/join/mgps/customview/MStarBar;

.field public g:Landroid/widget/LinearLayout;

.field public h:Landroid/widget/LinearLayout;

.field public i:Landroid/widget/ImageView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/TextView;

.field final synthetic l:Lcom/join/mgps/adapter/r1;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/r1$u1;->l:Lcom/join/mgps/adapter/r1;

    .line 2
    invoke-direct {p0, p2}, Lt1/a;-><init>(Landroid/view/View;)V

    const p1, 0x7f0900e1

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/r1$u1;->b:Landroid/widget/TextView;

    const p1, 0x7f0900d5

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/r1$u1;->c:Landroid/widget/TextView;

    const p1, 0x7f0900ea

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/r1$u1;->d:Landroid/widget/TextView;

    const p1, 0x7f0900d8

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/r1$u1;->e:Landroid/widget/TextView;

    const p1, 0x7f0902ac

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/MStarBar;

    iput-object p1, p0, Lcom/join/mgps/adapter/r1$u1;->f:Lcom/join/mgps/customview/MStarBar;

    const p1, 0x7f0900d9

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/adapter/r1$u1;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f0902d2

    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/r1$u1;->g:Landroid/widget/LinearLayout;

    const p1, 0x7f09087b

    .line 10
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/r1$u1;->h:Landroid/widget/LinearLayout;

    const p1, 0x7f0905e6

    .line 11
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/adapter/r1$u1;->i:Landroid/widget/ImageView;

    const p1, 0x7f090dbd

    .line 12
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/r1$u1;->j:Landroid/widget/LinearLayout;

    const p1, 0x7f0902af

    .line 13
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/r1$u1;->k:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/r1$u1;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/r1$u1;->k:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/r1$u1;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/r1$u1;->j:Landroid/widget/LinearLayout;

    return-object p0
.end method
