.class Lcom/join/mgps/adapter/t4$s;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PapaMainV2Adapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/t4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "s"
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/LinearLayout;

.field final synthetic m:Lcom/join/mgps/adapter/t4;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/t4;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/adapter/t4;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/t4$s;->m:Lcom/join/mgps/adapter/t4;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090616

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/t4$s;->a:Landroid/view/View;

    const p1, 0x7f090d45

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/t4$s;->b:Landroid/widget/RelativeLayout;

    const p1, 0x7f0904aa

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/t4$s;->c:Landroid/widget/TextView;

    const p1, 0x7f0904ab

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/adapter/t4$s;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f090d47

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/t4$s;->e:Landroid/widget/RelativeLayout;

    const p1, 0x7f091099

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/t4$s;->f:Landroid/widget/TextView;

    const p1, 0x7f09109a

    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/t4$s;->g:Landroid/widget/TextView;

    const p1, 0x7f0907c7

    .line 10
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/adapter/t4$s;->h:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f090d46

    .line 11
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/t4$s;->i:Landroid/widget/RelativeLayout;

    const p1, 0x7f091097

    .line 12
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/t4$s;->j:Landroid/widget/TextView;

    const p1, 0x7f091094

    .line 13
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/t4$s;->k:Landroid/widget/TextView;

    const p1, 0x7f0908f4

    .line 14
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/t4$s;->l:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/t4$s;)Lcom/facebook/drawee/view/SimpleDraweeView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/t4$s;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/t4$s;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/t4$s;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/adapter/t4$s;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/t4$s;->a:Landroid/view/View;

    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/adapter/t4$s;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/t4$s;->b:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/adapter/t4$s;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/t4$s;->k:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic f(Lcom/join/mgps/adapter/t4$s;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/t4$s;->i:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic g(Lcom/join/mgps/adapter/t4$s;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/t4$s;->l:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic h(Lcom/join/mgps/adapter/t4$s;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/t4$s;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic i(Lcom/join/mgps/adapter/t4$s;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/t4$s;->g:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic j(Lcom/join/mgps/adapter/t4$s;)Lcom/facebook/drawee/view/SimpleDraweeView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/t4$s;->h:Lcom/facebook/drawee/view/SimpleDraweeView;

    return-object p0
.end method

.method static synthetic k(Lcom/join/mgps/adapter/t4$s;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/t4$s;->e:Landroid/widget/RelativeLayout;

    return-object p0
.end method
