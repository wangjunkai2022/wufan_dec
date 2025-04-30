.class Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$b;
.super Ljava/lang/Object;
.source "SlidingTabLayoutDownloadCenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->b(ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;

    iput p2, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$b;->b:Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;

    iget-object p1, p1, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter;->f:Landroidx/viewpager/widget/ViewPager;

    iget v0, p0, Lcom/join/mgps/customview/SlidingTabLayoutDownloadCenter$b;->a:I

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method
