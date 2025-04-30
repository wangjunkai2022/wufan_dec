.class Lcom/join/android/app/common/utils/MyImageLoader$d;
.super Ljava/lang/Object;
.source "MyImageLoader.java"

# interfaces
.implements Lcom/facebook/drawee/controller/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/common/utils/MyImageLoader;->v(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;Z)V
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
.field final synthetic a:Z

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(ZLandroid/content/Context;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/android/app/common/utils/MyImageLoader$d;->a:Z

    iput-object p2, p0, Lcom/join/android/app/common/utils/MyImageLoader$d;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/facebook/imagepipeline/image/f;

    invoke-virtual {p0, p1, p2}, Lcom/join/android/app/common/utils/MyImageLoader$d;->h(Ljava/lang/String;Lcom/facebook/imagepipeline/image/f;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

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

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/android/app/common/utils/MyImageLoader$d;->g(Ljava/lang/String;Lcom/facebook/imagepipeline/image/f;Landroid/graphics/drawable/Animatable;)V

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
    iget-boolean p2, p0, Lcom/join/android/app/common/utils/MyImageLoader$d;->a:Z

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/join/android/app/common/utils/MyImageLoader$d;->b:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/join/android/app/common/utils/MyImageLoader;->b(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/String;Lcom/facebook/imagepipeline/image/f;)V
    .locals 0

    return-void
.end method
