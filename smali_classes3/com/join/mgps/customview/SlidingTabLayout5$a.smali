.class Lcom/join/mgps/customview/SlidingTabLayout5$a;
.super Ljava/lang/Object;
.source "SlidingTabLayout5.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/SlidingTabLayout5;->c(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/customview/SlidingTabLayout5;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/SlidingTabLayout5;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout5$a;->b:Lcom/join/mgps/customview/SlidingTabLayout5;

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout5$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout5$a;->b:Lcom/join/mgps/customview/SlidingTabLayout5;

    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout5$a;->a:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/customview/SlidingTabLayout1;->h(II)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout5$a;->b:Lcom/join/mgps/customview/SlidingTabLayout5;

    iget-object p1, p1, Lcom/join/mgps/customview/SlidingTabLayout1;->f:Landroidx/viewpager/widget/ViewPager;

    if-eqz p1, :cond_0

    .line 3
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout5$a;->a:I

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method
