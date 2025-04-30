.class Lcom/join/mgps/adapter/h5$c;
.super Ljava/lang/Object;
.source "SearchGameListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/h5;->s(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/h5$h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;

.field final synthetic b:Lcom/join/mgps/adapter/h5;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/h5;Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/h5$c;->b:Lcom/join/mgps/adapter/h5;

    iput-object p2, p0, Lcom/join/mgps/adapter/h5$c;->a:Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/h5$c;->b:Lcom/join/mgps/adapter/h5;

    invoke-static {v0}, Lcom/join/mgps/adapter/h5;->o(Lcom/join/mgps/adapter/h5;)Lcom/join/mgps/adapter/h5$e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/h5$c;->b:Lcom/join/mgps/adapter/h5;

    invoke-static {v0}, Lcom/join/mgps/adapter/h5;->o(Lcom/join/mgps/adapter/h5;)Lcom/join/mgps/adapter/h5$e;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/join/mgps/adapter/h5$c;->a:Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/join/mgps/adapter/h5$c;->a:Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchIntegratedFavoriteBean$FavoriteBean;->getUid()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    const-string v6, "0"

    invoke-interface/range {v1 .. v6}, Lcom/join/mgps/adapter/h5$e;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
