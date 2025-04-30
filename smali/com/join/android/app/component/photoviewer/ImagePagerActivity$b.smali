.class Lcom/join/android/app/component/photoviewer/ImagePagerActivity$b;
.super Ljava/lang/Object;
.source "ImagePagerActivity.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$b;->a:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$b;->a:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    add-int/2addr p1, v2

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v1, v3

    iget-object p1, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$b;->a:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    invoke-static {p1}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->D0(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;)Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const p1, 0x7f110447

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$b;->a:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    invoke-static {v0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->G0(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
