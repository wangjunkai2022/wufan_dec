.class Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$c;
.super Ljava/lang/Object;
.source "SlidingTabLayoutGameDetailImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;


# direct methods
.method private constructor <init>(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$c;->a:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$c;-><init>(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$c;->a:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Lcom/join/mgps/customview/l0;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$c;->a:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Lcom/join/mgps/customview/l0;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f09075b

    if-ne p1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$c;->a:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->f(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 4
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$c;->a:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Lcom/join/mgps/customview/l0;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage$c;->a:Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;

    invoke-static {v2}, Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;->a(Lcom/join/mgps/customview/SlidingTabLayoutGameDetailImage;)Lcom/join/mgps/customview/l0;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
