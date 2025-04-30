.class Lcom/join/mgps/adapter/l1$e3;
.super Lt1/a;
.source "GameDetialModleFourAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e3"
.end annotation


# instance fields
.field a:Lit/sephiroth/android/library/widget/HListView;

.field private b:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private c:Landroid/widget/TextView;

.field public d:Landroid/widget/ProgressBar;

.field public e:Landroid/widget/ProgressBar;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/LinearLayout;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/widget/TextView;

.field public o:Landroid/widget/TextView;

.field public p:Landroid/widget/TextView;

.field q:Landroid/widget/TextView;

.field r:Landroid/widget/LinearLayout;

.field final synthetic s:Lcom/join/mgps/adapter/l1;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/l1$e3;->s:Lcom/join/mgps/adapter/l1;

    .line 2
    invoke-direct {p0, p2}, Lt1/a;-><init>(Landroid/view/View;)V

    const p1, 0x7f090dc1

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lit/sephiroth/android/library/widget/HListView;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$e3;->a:Lit/sephiroth/android/library/widget/HListView;

    const p1, 0x7f090a39

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$e3;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f090a37

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$e3;->c:Landroid/widget/TextView;

    const p1, 0x7f090c60

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$e3;->d:Landroid/widget/ProgressBar;

    const p1, 0x7f090c59

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$e3;->e:Landroid/widget/ProgressBar;

    const p1, 0x7f09100c

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$e3;->g:Landroid/widget/LinearLayout;

    const p1, 0x7f090c4a

    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$e3;->f:Landroid/widget/TextView;

    const p1, 0x7f090cac

    .line 10
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$e3;->h:Landroid/widget/RelativeLayout;

    const p1, 0x7f090cad

    .line 11
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$e3;->i:Landroid/widget/RelativeLayout;

    const p1, 0x7f090a3a

    .line 12
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$e3;->j:Landroid/widget/TextView;

    const p1, 0x7f0908cd

    .line 13
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$e3;->k:Landroid/widget/LinearLayout;

    const p1, 0x7f0900ea

    .line 14
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$e3;->m:Landroid/widget/TextView;

    const p1, 0x7f0910e3

    .line 15
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$e3;->n:Landroid/widget/TextView;

    const p1, 0x7f0909b2

    .line 16
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$e3;->p:Landroid/widget/TextView;

    const p1, 0x7f0910ec

    .line 17
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$e3;->q:Landroid/widget/TextView;

    const p1, 0x7f090d63

    .line 18
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$e3;->l:Landroid/widget/LinearLayout;

    const p1, 0x7f090a38

    .line 19
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$e3;->o:Landroid/widget/TextView;

    const p1, 0x7f09100d

    .line 20
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$e3;->r:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/l1$e3;->l:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/l1$e3;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/adapter/l1$e3;)Lcom/facebook/drawee/view/SimpleDraweeView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/l1$e3;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/l1$e3;->g:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/l1$e3;->j:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic f(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/l1$e3;->h:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic g(Lcom/join/mgps/adapter/l1$e3;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/l1$e3;->k:Landroid/widget/LinearLayout;

    return-object p0
.end method
