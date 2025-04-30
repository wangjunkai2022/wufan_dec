.class Lcom/join/mgps/customview/SlidingTabLayout1$a;
.super Ljava/lang/Object;
.source "SlidingTabLayout1.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/SlidingTabLayout1;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/SlidingTabLayout1;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/SlidingTabLayout1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1$a;->a:Lcom/join/mgps/customview/SlidingTabLayout1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1$a;->a:Lcom/join/mgps/customview/SlidingTabLayout1;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1$a;->a:Lcom/join/mgps/customview/SlidingTabLayout1;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1$a;->a:Lcom/join/mgps/customview/SlidingTabLayout1;

    iget-object v1, v0, Lcom/join/mgps/customview/SlidingTabLayout1;->f:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    iput v1, v0, Lcom/join/mgps/customview/SlidingTabLayout1;->h:I

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1$a;->a:Lcom/join/mgps/customview/SlidingTabLayout1;

    iget v1, v0, Lcom/join/mgps/customview/SlidingTabLayout1;->h:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/SlidingTabLayout1;->h(II)V

    return-void
.end method
