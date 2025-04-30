.class Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d;
.super Ljava/lang/Object;
.source "ForumProfileFavoritesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->V(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d;->b:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    iput p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d;->b:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$u;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/join/mgps/Util/i0;->Y0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object v0

    const-string v1, "\u7528\u6237\u672a\u767b\u5f55\uff0c\u8bf7\u767b\u5f55"

    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    .line 5
    invoke-static {p1}, Lcom/join/mgps/Util/i0;->L0(Landroid/content/Context;)V

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d;->b:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->b(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;)Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$u;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$d;->a:I

    invoke-interface {p1, v0}, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$u;->a(I)V

    :cond_1
    return-void
.end method
