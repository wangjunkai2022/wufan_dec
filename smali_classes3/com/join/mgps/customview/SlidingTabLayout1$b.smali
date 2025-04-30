.class Lcom/join/mgps/customview/SlidingTabLayout1$b;
.super Ljava/lang/Object;
.source "SlidingTabLayout1.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/SlidingTabLayout1;->c(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/customview/SlidingTabLayout1;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/SlidingTabLayout1;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1$b;->b:Lcom/join/mgps/customview/SlidingTabLayout1;

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayout1$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1$b;->b:Lcom/join/mgps/customview/SlidingTabLayout1;

    iget-object v0, p1, Lcom/join/mgps/customview/SlidingTabLayout1;->f:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 2
    iget p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1$b;->a:I

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1$b;->a:I

    iput v0, p1, Lcom/join/mgps/customview/SlidingTabLayout1;->h:I

    .line 4
    invoke-static {p1}, Lcom/join/mgps/customview/SlidingTabLayout1;->a(Lcom/join/mgps/customview/SlidingTabLayout1;)Lcom/join/mgps/customview/SlidingTabLayout1$d;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabLayout1$b;->b:Lcom/join/mgps/customview/SlidingTabLayout1;

    iget v0, v0, Lcom/join/mgps/customview/SlidingTabLayout1;->h:I

    invoke-interface {p1, v0}, Lcom/join/mgps/customview/SlidingTabLayout1$d;->a(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayout1$b;->b:Lcom/join/mgps/customview/SlidingTabLayout1;

    invoke-virtual {p1}, Lcom/join/mgps/customview/SlidingTabLayout1;->i()V

    :goto_0
    return-void
.end method
