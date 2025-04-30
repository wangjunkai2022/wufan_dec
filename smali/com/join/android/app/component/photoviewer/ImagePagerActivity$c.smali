.class Lcom/join/android/app/component/photoviewer/ImagePagerActivity$c;
.super Ljava/lang/Object;
.source "ImagePagerActivity.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/photoviewer/ImagePagerActivity;->K0()V
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
    iput-object p1, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$c;->a:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$c;->a:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 3
    iget-object v1, p0, Lcom/join/android/app/component/photoviewer/ImagePagerActivity$c;->a:Lcom/join/android/app/component/photoviewer/ImagePagerActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
