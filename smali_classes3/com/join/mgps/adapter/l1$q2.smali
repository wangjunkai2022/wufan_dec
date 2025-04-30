.class Lcom/join/mgps/adapter/l1$q2;
.super Lt1/a;
.source "GameDetialModleFourAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "q2"
.end annotation


# instance fields
.field a:Landroid/widget/LinearLayout;

.field b:Lcom/join/mgps/customview/MyGridView;

.field c:Landroid/view/View;

.field final synthetic d:Lcom/join/mgps/adapter/l1;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/l1$q2;->d:Lcom/join/mgps/adapter/l1;

    .line 2
    invoke-direct {p0, p2}, Lt1/a;-><init>(Landroid/view/View;)V

    const p1, 0x7f090ce1

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/MyGridView;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$q2;->b:Lcom/join/mgps/customview/MyGridView;

    const p1, 0x7f090877

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$q2;->a:Landroid/widget/LinearLayout;

    const p1, 0x7f0908c8

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$q2;->c:Landroid/view/View;

    return-void
.end method
