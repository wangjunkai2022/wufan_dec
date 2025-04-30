.class Lcom/join/mgps/adapter/r1$l2;
.super Lt1/a;
.source "GameDetialModleThreeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/r1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "l2"
.end annotation


# instance fields
.field a:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

.field b:Landroidx/viewpager/widget/ViewPager;

.field final synthetic c:Lcom/join/mgps/adapter/r1;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/r1;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/r1$l2;->c:Lcom/join/mgps/adapter/r1;

    .line 2
    invoke-direct {p0, p2}, Lt1/a;-><init>(Landroid/view/View;)V

    const p1, 0x7f090f0d

    .line 3
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    iput-object p1, p0, Lcom/join/mgps/adapter/r1$l2;->a:Lcom/join/mgps/customview/SlidingTabLayoutGameDetail;

    const p1, 0x7f091280

    .line 4
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/join/mgps/adapter/r1$l2;->b:Landroidx/viewpager/widget/ViewPager;

    return-void
.end method
