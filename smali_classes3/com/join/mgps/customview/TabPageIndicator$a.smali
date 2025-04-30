.class Lcom/join/mgps/customview/TabPageIndicator$a;
.super Ljava/lang/Object;
.source "TabPageIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/TabPageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/TabPageIndicator;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/TabPageIndicator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/TabPageIndicator$a;->a:Lcom/join/mgps/customview/TabPageIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/join/mgps/customview/TabPageIndicator$e;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/TabPageIndicator$a;->a:Lcom/join/mgps/customview/TabPageIndicator;

    invoke-static {v0}, Lcom/join/mgps/customview/TabPageIndicator;->a(Lcom/join/mgps/customview/TabPageIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/customview/TabPageIndicator$e;->b()I

    move-result p1

    .line 4
    iget-object v1, p0, Lcom/join/mgps/customview/TabPageIndicator$a;->a:Lcom/join/mgps/customview/TabPageIndicator;

    invoke-static {v1}, Lcom/join/mgps/customview/TabPageIndicator;->a(Lcom/join/mgps/customview/TabPageIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    if-ne v0, p1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/TabPageIndicator$a;->a:Lcom/join/mgps/customview/TabPageIndicator;

    invoke-static {v0}, Lcom/join/mgps/customview/TabPageIndicator;->b(Lcom/join/mgps/customview/TabPageIndicator;)Lcom/join/mgps/customview/TabPageIndicator$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/TabPageIndicator$a;->a:Lcom/join/mgps/customview/TabPageIndicator;

    invoke-static {v0}, Lcom/join/mgps/customview/TabPageIndicator;->b(Lcom/join/mgps/customview/TabPageIndicator;)Lcom/join/mgps/customview/TabPageIndicator$d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/join/mgps/customview/TabPageIndicator$d;->a(I)V

    :cond_0
    return-void
.end method
