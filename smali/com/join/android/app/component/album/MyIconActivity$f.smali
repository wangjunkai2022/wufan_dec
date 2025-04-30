.class Lcom/join/android/app/component/album/MyIconActivity$f;
.super Ljava/lang/Object;
.source "MyIconActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/album/MyIconActivity;->h1(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/album/MyIconActivity;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/album/MyIconActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity$f;->a:Lcom/join/android/app/component/album/MyIconActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 p1, 0x1

    if-ge p3, p1, :cond_0

    .line 1
    :try_start_0
    new-instance p1, Lcom/tbruyelle/rxpermissions2/c;

    iget-object p2, p0, Lcom/join/android/app/component/album/MyIconActivity$f;->a:Lcom/join/android/app/component/album/MyIconActivity;

    invoke-direct {p1, p2}, Lcom/tbruyelle/rxpermissions2/c;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    const-string p2, "android.permission.CAMERA"

    .line 2
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tbruyelle/rxpermissions2/c;->r([Ljava/lang/String;)Lio/reactivex/z;

    move-result-object p1

    new-instance p2, Lcom/join/android/app/component/album/MyIconActivity$f$a;

    invoke-direct {p2, p0}, Lcom/join/android/app/component/album/MyIconActivity$f$a;-><init>(Lcom/join/android/app/component/album/MyIconActivity$f;)V

    invoke-virtual {p1, p2}, Lio/reactivex/z;->B5(Lw2/g;)Lio/reactivex/disposables/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/android/app/component/album/MyIconActivity$f;->a:Lcom/join/android/app/component/album/MyIconActivity;

    invoke-static {p1}, Lcom/join/android/app/component/album/MyIconActivity;->O0(Lcom/join/android/app/component/album/MyIconActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/android/app/component/album/CropPicActivity_;->S0(Landroid/content/Context;)Lcom/join/android/app/component/album/CropPicActivity_$k;

    move-result-object p1

    iget-object p2, p0, Lcom/join/android/app/component/album/MyIconActivity$f;->a:Lcom/join/android/app/component/album/MyIconActivity;

    invoke-static {p2}, Lcom/join/android/app/component/album/MyIconActivity;->N0(Lcom/join/android/app/component/album/MyIconActivity;)Lcom/join/android/app/component/album/adapter/d;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/join/android/app/component/album/adapter/d;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/join/android/app/component/album/CropPicActivity_$k;->a(Ljava/lang/String;)Lcom/join/android/app/component/album/CropPicActivity_$k;

    move-result-object p1

    iget-object p2, p0, Lcom/join/android/app/component/album/MyIconActivity$f;->a:Lcom/join/android/app/component/album/MyIconActivity;

    invoke-static {p2}, Lcom/join/android/app/component/album/MyIconActivity;->M0(Lcom/join/android/app/component/album/MyIconActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/join/android/app/component/album/CropPicActivity_$k;->c(I)Lcom/join/android/app/component/album/CropPicActivity_$k;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method
