.class Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$q;
.super Ljava/lang/Object;
.source "ForumProfileFavoritesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;->Z(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$q;->b:Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter;

    iput-object p2, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$q;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileFavoritesAdapter$q;->a:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/join/mgps/Util/i0;->Q0(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
