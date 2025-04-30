.class Lcom/join/mgps/adapter/t1$c;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GameInfoAdapterV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/t1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/View;

.field private c:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field final synthetic g:Lcom/join/mgps/adapter/t1;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/t1;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/adapter/t1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/t1$c;->g:Lcom/join/mgps/adapter/t1;

    .line 2
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090800

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object p1, p0, Lcom/join/mgps/adapter/t1$c;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    const p1, 0x7f091101

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/t1$c;->d:Landroid/widget/TextView;

    const p1, 0x7f091170

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/t1$c;->e:Landroid/widget/TextView;

    const p1, 0x7f0909eb

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/t1$c;->a:Landroid/view/View;

    const p1, 0x7f090311

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/t1$c;->b:Landroid/view/View;

    const p1, 0x7f090d89

    .line 8
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/t1$c;->f:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/t1$c;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/t1$c;->d:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/t1$c;)Lcom/facebook/drawee/view/SimpleDraweeView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/t1$c;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/adapter/t1$c;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/t1$c;->e:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/adapter/t1$c;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/t1$c;->f:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/adapter/t1$c;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/t1$c;->b:Landroid/view/View;

    return-object p0
.end method
