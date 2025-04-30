.class Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$a;
.super Ljava/lang/Object;
.source "SlidingTabLayoutDownloadCenter.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$a;->a:Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;

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
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$a;->a:Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$a;->a:Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$a;->a:Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;

    iget-object v1, v0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->f:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    iput v1, v0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->h:I

    .line 5
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$a;->a:Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;

    iget v1, v0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->h:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->f(II)V

    return-void
.end method
