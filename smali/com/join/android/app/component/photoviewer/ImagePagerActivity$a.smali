.class Lcom/join/android/app/component/photoviewer/ImagePagerActivity$a;
.super Ljava/lang/Object;
.source "ImagePagerActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/component/photoviewer/ImagePagerActivity;
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
    iput-object p1, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$a;->a:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$a;->a:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    invoke-static {v0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->D0(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;)Lcom/join/android/app/component/photoviewer/MultiTouchViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 2
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$a;->a:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    iget-object v1, v0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->d:Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->E0(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$a;->a:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    iget-object v0, v0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->d:Lcom/join/android/app/component/photoviewer/ImagePagerActivity$g;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$a;->a:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    invoke-static {v0, p1}, Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->F0(Lcom/join/android/app/component/photoviewer/ImagePagerActivity;Landroid/view/View;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
