.class Lcom/join/android/app/component/album/MyAlbumActivity$f$a;
.super Ljava/lang/Object;
.source "MyAlbumActivity.java"

# interfaces
.implements Lw2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/album/MyAlbumActivity$f;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/g<",
        "Lcom/tbruyelle/rxpermissions2/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/album/MyAlbumActivity$f;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/album/MyAlbumActivity$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/album/MyAlbumActivity$f$a;->a:Lcom/join/android/app/component/album/MyAlbumActivity$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/tbruyelle/rxpermissions2/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/b;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/android/app/component/album/MyAlbumActivity$f$a;->a:Lcom/join/android/app/component/album/MyAlbumActivity$f;

    iget-object p1, p1, Lcom/join/android/app/component/album/MyAlbumActivity$f;->a:Lcom/join/android/app/component/album/MyAlbumActivity;

    const-string v0, "android.permission.CAMERA"

    invoke-virtual {p1, v0}, Lcom/BaseFragmentActivity;->checkPermiss(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/join/android/app/component/album/MyAlbumActivity$f$a;->a:Lcom/join/android/app/component/album/MyAlbumActivity$f;

    iget-object p1, p1, Lcom/join/android/app/component/album/MyAlbumActivity$f;->a:Lcom/join/android/app/component/album/MyAlbumActivity;

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p1, v0}, Lcom/BaseFragmentActivity;->checkPermiss(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/join/android/app/component/album/MyAlbumActivity$f$a;->a:Lcom/join/android/app/component/album/MyAlbumActivity$f;

    iget-object p1, p1, Lcom/join/android/app/component/album/MyAlbumActivity$f;->a:Lcom/join/android/app/component/album/MyAlbumActivity;

    invoke-virtual {p1}, Lcom/join/android/app/component/album/MyAlbumActivity;->P0()V

    goto :goto_0

    .line 4
    :cond_0
    iget-boolean v0, p1, Lcom/tbruyelle/rxpermissions2/b;->c:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/component/album/MyAlbumActivity$f$a;->a:Lcom/join/android/app/component/album/MyAlbumActivity$f;

    iget-object v0, v0, Lcom/join/android/app/component/album/MyAlbumActivity$f;->a:Lcom/join/android/app/component/album/MyAlbumActivity;

    invoke-static {v0}, Lcom/join/mgps/Util/a0;->c0(Landroid/content/Context;)Lcom/join/mgps/Util/a0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/android/app/component/album/MyAlbumActivity$f$a;->a:Lcom/join/android/app/component/album/MyAlbumActivity$f;

    iget-object v1, v1, Lcom/join/android/app/component/album/MyAlbumActivity$f;->a:Lcom/join/android/app/component/album/MyAlbumActivity;

    invoke-virtual {v0, v1, p1}, Lcom/join/mgps/Util/z;->W(Landroid/content/Context;Lcom/tbruyelle/rxpermissions2/b;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/tbruyelle/rxpermissions2/b;

    invoke-virtual {p0, p1}, Lcom/join/android/app/component/album/MyAlbumActivity$f$a;->a(Lcom/tbruyelle/rxpermissions2/b;)V

    return-void
.end method
