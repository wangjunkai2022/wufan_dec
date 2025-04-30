.class public Lcom/join/mgps/adapter/c$a0;
.super Lcom/join/mgps/adapter/c$h0;
.source "ChoiceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a0"
.end annotation


# instance fields
.field public b:[Landroid/view/View;

.field public c:[Lcom/facebook/drawee/view/SimpleDraweeView;

.field public d:[Landroid/widget/TextView;

.field public e:[Landroid/widget/TextView;

.field final synthetic f:Lcom/join/mgps/adapter/c;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/c;Landroid/view/View;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/c$a0;->f:Lcom/join/mgps/adapter/c;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/c$h0;-><init>(Lcom/join/mgps/adapter/c;Landroid/view/View;)V

    const/4 p1, 0x3

    new-array v0, p1, [Landroid/view/View;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/adapter/c$a0;->b:[Landroid/view/View;

    new-array v0, p1, [Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 4
    iput-object v0, p0, Lcom/join/mgps/adapter/c$a0;->c:[Lcom/facebook/drawee/view/SimpleDraweeView;

    new-array v0, p1, [Landroid/widget/TextView;

    .line 5
    iput-object v0, p0, Lcom/join/mgps/adapter/c$a0;->d:[Landroid/widget/TextView;

    new-array p1, p1, [Landroid/widget/TextView;

    .line 6
    iput-object p1, p0, Lcom/join/mgps/adapter/c$a0;->e:[Landroid/widget/TextView;

    const p1, 0x7f09078e

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f09078f

    .line 8
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090790

    .line 9
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 10
    iget-object v1, p0, Lcom/join/mgps/adapter/c$a0;->b:[Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    .line 11
    aput-object v0, v1, p1

    const/4 p1, 0x2

    .line 12
    aput-object p2, v1, p1

    .line 13
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/adapter/c$a0;->b:[Landroid/view/View;

    array-length p2, p1

    if-ge v2, p2, :cond_0

    .line 14
    iget-object p2, p0, Lcom/join/mgps/adapter/c$a0;->c:[Lcom/facebook/drawee/view/SimpleDraweeView;

    aget-object p1, p1, v2

    const v0, 0x7f090311

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    aput-object p1, p2, v2

    .line 15
    iget-object p1, p0, Lcom/join/mgps/adapter/c$a0;->d:[Landroid/widget/TextView;

    iget-object p2, p0, Lcom/join/mgps/adapter/c$a0;->b:[Landroid/view/View;

    aget-object p2, p2, v2

    const v0, 0x7f090acd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    aput-object p2, p1, v2

    .line 16
    iget-object p1, p0, Lcom/join/mgps/adapter/c$a0;->e:[Landroid/widget/TextView;

    iget-object p2, p0, Lcom/join/mgps/adapter/c$a0;->b:[Landroid/view/View;

    aget-object p2, p2, v2

    const v0, 0x7f090340

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    aput-object p2, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
