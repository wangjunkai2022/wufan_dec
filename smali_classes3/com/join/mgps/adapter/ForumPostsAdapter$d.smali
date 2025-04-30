.class Lcom/join/mgps/adapter/ForumPostsAdapter$d;
.super Ljava/lang/Object;
.source "ForumPostsAdapter.java"

# interfaces
.implements Lcom/facebook/drawee/controller/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumPostsAdapter;->U(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V
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
.field final synthetic a:Lcom/facebook/drawee/view/SimpleDraweeView;

.field final synthetic b:Lcom/join/mgps/adapter/ForumPostsAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Lcom/facebook/drawee/view/SimpleDraweeView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$d;->b:Lcom/join/mgps/adapter/ForumPostsAdapter;

    iput-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$d;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/facebook/imagepipeline/image/f;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$d;->h(Ljava/lang/String;Lcom/facebook/imagepipeline/image/f;)V

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

    invoke-virtual {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumPostsAdapter$d;->g(Ljava/lang/String;Lcom/facebook/imagepipeline/image/f;Landroid/graphics/drawable/Animatable;)V

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$d;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$d;->b:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->h(Lcom/join/mgps/adapter/ForumPostsAdapter;Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public g(Ljava/lang/String;Lcom/facebook/imagepipeline/image/f;Landroid/graphics/drawable/Animatable;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$d;->b:Lcom/join/mgps/adapter/ForumPostsAdapter;

    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$d;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {p3, p1, v0, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->d0(Ljava/lang/String;Landroid/view/View;Lcom/facebook/imagepipeline/image/f;)Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p2, :cond_0

    .line 2
    new-instance p3, Lcom/join/mgps/adapter/ForumPostsAdapter$k0;

    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$d;->b:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-direct {p3, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter$k0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;)V

    .line 3
    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/f;->a()I

    move-result v0

    iput v0, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$k0;->a:I

    .line 4
    invoke-interface {p2}, Lcom/facebook/imagepipeline/image/f;->getHeight()I

    move-result p2

    iput p2, p3, Lcom/join/mgps/adapter/ForumPostsAdapter$k0;->b:I

    .line 5
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$d;->b:Lcom/join/mgps/adapter/ForumPostsAdapter;

    invoke-virtual {p2, p1, p3}, Lcom/join/mgps/adapter/ForumPostsAdapter;->l(Ljava/lang/String;Lcom/join/mgps/adapter/ForumPostsAdapter$k0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public h(Ljava/lang/String;Lcom/facebook/imagepipeline/image/f;)V
    .locals 0

    return-void
.end method
