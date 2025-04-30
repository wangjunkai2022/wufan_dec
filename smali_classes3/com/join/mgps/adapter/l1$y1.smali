.class Lcom/join/mgps/adapter/l1$y1;
.super Lt1/a;
.source "GameDetialModleFourAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/l1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "y1"
.end annotation


# instance fields
.field a:Lit/sephiroth/android/library/widget/HListView;

.field final synthetic b:Lcom/join/mgps/adapter/l1;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/l1;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/l1$y1;->b:Lcom/join/mgps/adapter/l1;

    .line 2
    invoke-direct {p0, p2}, Lt1/a;-><init>(Landroid/view/View;)V

    const p1, 0x7f090488

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lit/sephiroth/android/library/widget/HListView;

    iput-object p1, p0, Lcom/join/mgps/adapter/l1$y1;->a:Lit/sephiroth/android/library/widget/HListView;

    return-void
.end method
