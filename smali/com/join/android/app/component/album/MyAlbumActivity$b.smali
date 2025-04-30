.class Lcom/join/android/app/component/album/MyAlbumActivity$b;
.super Ljava/lang/Object;
.source "MyAlbumActivity.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/album/MyAlbumActivity;->V0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/album/MyAlbumActivity;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/album/MyAlbumActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/album/MyAlbumActivity$b;->a:Lcom/join/android/app/component/album/MyAlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity$b;->a:Lcom/join/android/app/component/album/MyAlbumActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 3
    iget-object v1, p0, Lcom/join/android/app/component/album/MyAlbumActivity$b;->a:Lcom/join/android/app/component/album/MyAlbumActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 4
    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity$b;->a:Lcom/join/android/app/component/album/MyAlbumActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/join/android/app/component/album/MyAlbumActivity;->J0(Lcom/join/android/app/component/album/MyAlbumActivity;Z)V

    .line 5
    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity$b;->a:Lcom/join/android/app/component/album/MyAlbumActivity;

    invoke-static {v0}, Lcom/join/android/app/component/album/MyAlbumActivity;->K0(Lcom/join/android/app/component/album/MyAlbumActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
