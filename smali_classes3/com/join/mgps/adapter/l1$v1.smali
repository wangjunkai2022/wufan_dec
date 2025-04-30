.class Lcom/join/mgps/adapter/l1$v1;
.super Lt1/a;
.source "GameDetialModleFourAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "v1"
.end annotation


# instance fields
.field a:Landroid/widget/LinearLayout;

.field b:Landroid/widget/LinearLayout;

.field c:Landroid/widget/TextView;

.field d:Landroid/view/View;

.field e:Landroid/view/View;

.field final synthetic f:Lcom/join/mgps/adapter/l1;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/l1$v1;->f:Lcom/join/mgps/adapter/l1;

    .line 2
    invoke-direct {p0, p2}, Lt1/a;-><init>(Landroid/view/View;)V

    const p1, 0x7f090602

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$v1;->a:Landroid/widget/LinearLayout;

    const p1, 0x7f090ecf

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$v1;->b:Landroid/widget/LinearLayout;

    const p1, 0x7f090f4c

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$v1;->c:Landroid/widget/TextView;

    const p1, 0x7f090886

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$v1;->d:Landroid/view/View;

    const p1, 0x7f090887

    .line 7
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$v1;->e:Landroid/view/View;

    return-void
.end method
