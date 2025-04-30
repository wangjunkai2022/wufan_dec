.class Lcom/join/mgps/customview/TabPageBoxIndicator$a;
.super Ljava/lang/Object;
.source "TabPageBoxIndicator.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/TabPageBoxIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/TabPageBoxIndicator;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/TabPageBoxIndicator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/TabPageBoxIndicator$a;->a:Lcom/join/mgps/customview/TabPageBoxIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/join/mgps/customview/TabPageBoxIndicator$e;

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/TabPageBoxIndicator$a;->a:Lcom/join/mgps/customview/TabPageBoxIndicator;

    invoke-static {v0}, Lcom/join/mgps/customview/TabPageBoxIndicator;->a(Lcom/join/mgps/customview/TabPageBoxIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/customview/TabPageBoxIndicator$e;->b()I

    move-result p1

    .line 4
    iget-object v1, p0, Lcom/join/mgps/customview/TabPageBoxIndicator$a;->a:Lcom/join/mgps/customview/TabPageBoxIndicator;

    invoke-static {v1}, Lcom/join/mgps/customview/TabPageBoxIndicator;->a(Lcom/join/mgps/customview/TabPageBoxIndicator;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    if-ne v0, p1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/TabPageBoxIndicator$a;->a:Lcom/join/mgps/customview/TabPageBoxIndicator;

    invoke-static {v0}, Lcom/join/mgps/customview/TabPageBoxIndicator;->b(Lcom/join/mgps/customview/TabPageBoxIndicator;)Lcom/join/mgps/customview/TabPageIndicator$d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/TabPageBoxIndicator$a;->a:Lcom/join/mgps/customview/TabPageBoxIndicator;

    invoke-static {v0}, Lcom/join/mgps/customview/TabPageBoxIndicator;->b(Lcom/join/mgps/customview/TabPageBoxIndicator;)Lcom/join/mgps/customview/TabPageIndicator$d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/join/mgps/customview/TabPageIndicator$d;->a(I)V

    :cond_0
    return-void
.end method
