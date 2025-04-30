.class Lcom/join/mgps/customview/SlidingTabLayout2$c;
.super Ljava/lang/Object;
.source "SlidingTabLayout2.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/SlidingTabLayout2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/SlidingTabLayout2;


# direct methods
.method private constructor <init>(Lcom/join/mgps/customview/SlidingTabLayout2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout2$c;->a:Lcom/join/mgps/customview/SlidingTabLayout2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/customview/SlidingTabLayout2;Lcom/join/mgps/customview/SlidingTabLayout2$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlidingTabLayout2$c;-><init>(Lcom/join/mgps/customview/SlidingTabLayout2;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout2$c;->a:Lcom/join/mgps/customview/SlidingTabLayout2;

    invoke-static {v1}, Lcom/join/mgps/customview/SlidingTabLayout2;->a(Lcom/join/mgps/customview/SlidingTabLayout2;)Lcom/join/mgps/customview/m0;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout2$c;->a:Lcom/join/mgps/customview/SlidingTabLayout2;

    invoke-static {v1}, Lcom/join/mgps/customview/SlidingTabLayout2;->a(Lcom/join/mgps/customview/SlidingTabLayout2;)Lcom/join/mgps/customview/m0;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout2$c;->a:Lcom/join/mgps/customview/SlidingTabLayout2;

    invoke-static {v1}, Lcom/join/mgps/customview/SlidingTabLayout2;->e(Lcom/join/mgps/customview/SlidingTabLayout2;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout2$c;->a:Lcom/join/mgps/customview/SlidingTabLayout2;

    invoke-static {v1}, Lcom/join/mgps/customview/SlidingTabLayout2;->a(Lcom/join/mgps/customview/SlidingTabLayout2;)Lcom/join/mgps/customview/m0;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayout2$c;->a:Lcom/join/mgps/customview/SlidingTabLayout2;

    invoke-virtual {v2}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0602aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabLayout2$c;->a:Lcom/join/mgps/customview/SlidingTabLayout2;

    invoke-static {v1}, Lcom/join/mgps/customview/SlidingTabLayout2;->a(Lcom/join/mgps/customview/SlidingTabLayout2;)Lcom/join/mgps/customview/m0;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, -0x9e9e9f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
