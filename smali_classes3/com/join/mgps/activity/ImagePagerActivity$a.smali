.class Lcom/join/mgps/activity/ImagePagerActivity$a;
.super Ljava/lang/Object;
.source "ImagePagerActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ImagePagerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ImagePagerActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ImagePagerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ImagePagerActivity$a;->a:Lcom/join/mgps/activity/ImagePagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ImagePagerActivity$a;->a:Lcom/join/mgps/activity/ImagePagerActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/ImagePagerActivity;->C0(Lcom/join/mgps/activity/ImagePagerActivity;)Lcom/join/mgps/customview/CirclePageIndicator;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/CirclePageIndicator;->setCurrentItem(I)V

    return-void
.end method
