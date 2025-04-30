.class Lcom/join/mgps/customview/SlidingTabMyPaPaLayout$c;
.super Ljava/lang/Object;
.source "SlidingTabMyPaPaLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/SlidingTabMyPaPaLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/SlidingTabMyPaPaLayout;


# direct methods
.method private constructor <init>(Lcom/join/mgps/customview/SlidingTabMyPaPaLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabMyPaPaLayout$c;->a:Lcom/join/mgps/customview/SlidingTabMyPaPaLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/customview/SlidingTabMyPaPaLayout;Lcom/join/mgps/customview/SlidingTabMyPaPaLayout$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/SlidingTabMyPaPaLayout$c;-><init>(Lcom/join/mgps/customview/SlidingTabMyPaPaLayout;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabMyPaPaLayout$c;->a:Lcom/join/mgps/customview/SlidingTabMyPaPaLayout;

    invoke-static {v1}, Lcom/join/mgps/customview/SlidingTabMyPaPaLayout;->a(Lcom/join/mgps/customview/SlidingTabMyPaPaLayout;)Lcom/join/mgps/customview/l0;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabMyPaPaLayout$c;->a:Lcom/join/mgps/customview/SlidingTabMyPaPaLayout;

    invoke-static {v1}, Lcom/join/mgps/customview/SlidingTabMyPaPaLayout;->a(Lcom/join/mgps/customview/SlidingTabMyPaPaLayout;)Lcom/join/mgps/customview/l0;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabMyPaPaLayout$c;->a:Lcom/join/mgps/customview/SlidingTabMyPaPaLayout;

    invoke-static {p1}, Lcom/join/mgps/customview/SlidingTabMyPaPaLayout;->e(Lcom/join/mgps/customview/SlidingTabMyPaPaLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
