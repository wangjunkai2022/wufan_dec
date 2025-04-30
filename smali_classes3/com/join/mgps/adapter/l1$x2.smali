.class Lcom/join/mgps/adapter/l1$x2;
.super Lt1/a;
.source "GameDetialModleFourAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "x2"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:[Landroid/widget/TextView;

.field final synthetic f:Lcom/join/mgps/adapter/l1;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/l1$x2;->f:Lcom/join/mgps/adapter/l1;

    .line 2
    invoke-direct {p0, p2}, Lt1/a;-><init>(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/join/mgps/adapter/l1$x2;->e:[Landroid/widget/TextView;

    const p1, 0x7f090848

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$x2;->a:Landroid/widget/TextView;

    const p1, 0x7f090849

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$x2;->b:Landroid/widget/TextView;

    const p1, 0x7f09084a

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$x2;->c:Landroid/widget/TextView;

    const p1, 0x7f09084b

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$x2;->d:Landroid/widget/TextView;

    const/4 p2, 0x4

    new-array p2, p2, [Landroid/widget/TextView;

    .line 8
    iget-object v0, p0, Lcom/join/mgps/adapter/l1$x2;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    iget-object v0, p0, Lcom/join/mgps/adapter/l1$x2;->b:Landroid/widget/TextView;

    const/4 v1, 0x1

    aput-object v0, p2, v1

    iget-object v0, p0, Lcom/join/mgps/adapter/l1$x2;->c:Landroid/widget/TextView;

    const/4 v1, 0x2

    aput-object v0, p2, v1

    const/4 v0, 0x3

    aput-object p1, p2, v0

    iput-object p2, p0, Lcom/join/mgps/adapter/l1$x2;->e:[Landroid/widget/TextView;

    return-void
.end method
