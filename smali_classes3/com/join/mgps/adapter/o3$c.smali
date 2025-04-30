.class Lcom/join/mgps/adapter/o3$c;
.super Ljava/lang/Object;
.source "MyVoucherAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/o3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field b:Landroid/widget/TextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/widget/LinearLayout;

.field final synthetic f:Lcom/join/mgps/adapter/o3;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/o3;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/o3$c;->f:Lcom/join/mgps/adapter/o3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const p1, 0x7f0912b6

    .line 2
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/o3$c;->a:Landroid/widget/TextView;

    const p1, 0x7f0912c0

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/o3$c;->b:Landroid/widget/TextView;

    const p1, 0x7f0912b9

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/o3$c;->d:Landroid/widget/TextView;

    const p1, 0x7f0912ba

    .line 5
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/join/mgps/adapter/o3$c;->c:Landroid/widget/TextView;

    const p1, 0x7f09058b

    .line 6
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/mgps/adapter/o3$c;->e:Landroid/widget/LinearLayout;

    return-void
.end method
