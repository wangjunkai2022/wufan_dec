.class Lcom/join/mgps/adapter/r1$n1;
.super Lt1/a;
.source "GameDetialModleThreeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "n1"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/ImageView;

.field c:Landroid/view/View;

.field final synthetic d:Lcom/join/mgps/adapter/r1;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/r1$n1;->d:Lcom/join/mgps/adapter/r1;

    .line 2
    invoke-direct {p0, p2}, Lt1/a;-><init>(Landroid/view/View;)V

    const p1, 0x7f0902c6

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/join/mgps/adapter/r1$n1;->b:Landroid/widget/ImageView;

    const p1, 0x7f090876

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/r1$n1;->c:Landroid/view/View;

    const p1, 0x7f0902c5

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/r1$n1;->a:Landroid/widget/TextView;

    return-void
.end method
