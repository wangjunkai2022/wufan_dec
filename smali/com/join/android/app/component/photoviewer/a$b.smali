.class Lcom/join/android/app/component/photoviewer/a$b;
.super Ljava/lang/Object;
.source "ImageDetailFragment.java"

# interfaces
.implements Lcom/facebook/drawee/controller/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/photoviewer/a;->O()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/drawee/controller/c<",
        "Lcom/facebook/imagepipeline/image/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/component/photoviewer/a;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/photoviewer/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/photoviewer/a$b;->a:Lcom/join/android/app/component/photoviewer/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/facebook/imagepipeline/image/f;

    invoke-virtual {p0, p1, p2}, Lcom/join/android/app/component/photoviewer/a$b;->h(Ljava/lang/String;Lcom/facebook/imagepipeline/image/f;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    :try_start_0
    const-string p1, "\u52a0\u8f7d\u5931\u8d25"

    .line 1
    iget-object p2, p0, Lcom/join/android/app/component/photoviewer/a$b;->a:Lcom/join/android/app/component/photoviewer/a;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :catch_0
    iget-object p1, p0, Lcom/join/android/app/component/photoviewer/a$b;->a:Lcom/join/android/app/component/photoviewer/a;

    invoke-static {p1}, Lcom/join/android/app/component/photoviewer/a;->N(Lcom/join/android/app/component/photoviewer/a;)Lme/relex/photodraweeview/PhotoDraweeView;

    move-result-object p1

    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 3
    iget-object p1, p0, Lcom/join/android/app/component/photoviewer/a$b;->a:Lcom/join/android/app/component/photoviewer/a;

    invoke-static {p1}, Lcom/join/android/app/component/photoviewer/a;->N(Lcom/join/android/app/component/photoviewer/a;)Lme/relex/photodraweeview/PhotoDraweeView;

    move-result-object p1

    const p2, 0x7f0807b1

    invoke-virtual {p1, p2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageResource(I)V

    .line 4
    iget-object p1, p0, Lcom/join/android/app/component/photoviewer/a$b;->a:Lcom/join/android/app/component/photoviewer/a;

    invoke-static {p1}, Lcom/join/android/app/component/photoviewer/a;->M(Lcom/join/android/app/component/photoviewer/a;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic d(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/facebook/imagepipeline/image/f;

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/android/app/component/photoviewer/a$b;->g(Ljava/lang/String;Lcom/facebook/imagepipeline/image/f;Landroid/graphics/drawable/Animatable;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public g(Ljava/lang/String;Lcom/facebook/imagepipeline/image/f;Landroid/graphics/drawable/Animatable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/android/app/component/photoviewer/a$b;->a:Lcom/join/android/app/component/photoviewer/a;

    invoke-static {p1}, Lcom/join/android/app/component/photoviewer/a;->M(Lcom/join/android/app/component/photoviewer/a;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/join/android/app/component/photoviewer/a$b;->a:Lcom/join/android/app/component/photoviewer/a;

    invoke-static {p1}, Lcom/join/android/app/component/photoviewer/a;->N(Lcom/join/android/app/component/photoviewer/a;)Lme/relex/photodraweeview/PhotoDraweeView;

    move-result-object p1

    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/f;->a()I

    move-result p3

    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/f;->getHeight()I

    move-result p2

    invoke-virtual {p1, p3, p2}, Lme/relex/photodraweeview/PhotoDraweeView;->update(II)V

    return-void
.end method

.method public h(Ljava/lang/String;Lcom/facebook/imagepipeline/image/f;)V
    .locals 0

    return-void
.end method
