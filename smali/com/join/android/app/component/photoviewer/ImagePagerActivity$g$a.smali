.class Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g$a;
.super Ljava/lang/Object;
.source "ImagePagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g$a;->a:Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g$a;->a:Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;

    iget-object p1, p1, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;->c:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    invoke-static {p1}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->D0(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;)Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object p1

    check-cast p1, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$f;

    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g$a;->a:Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;

    iget-object v0, v0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;->c:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    invoke-static {v0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->D0(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;)Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$f;->b(I)Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g$a;->a:Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;

    iget-object v0, v0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;->c:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    invoke-static {v0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->H0(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;)Landroid/os/AsyncTask;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 3
    iget-object p1, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g$a;->a:Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
