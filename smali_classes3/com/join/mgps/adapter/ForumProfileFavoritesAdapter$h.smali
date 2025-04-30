.class Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h;
.super Ljava/lang/Object;
.source "ForumProfileFavoritesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->C(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h;->c:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    iput-object p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h;->a:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;

    iput p3, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h;->c:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->a(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f010051

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h;->a:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;

    iget-object v0, v0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$x;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h;->c:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$u;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h;->c:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$u;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$h;->b:I

    invoke-interface {p1, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$u;->a(I)V

    :cond_0
    return-void
.end method
