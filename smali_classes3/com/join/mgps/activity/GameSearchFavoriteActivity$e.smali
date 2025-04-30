.class Lcom/join/mgps/activity/GameSearchFavoriteActivity$e;
.super Ljava/lang/Object;
.source "GameSearchFavoriteActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameSearchFavoriteActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameSearchFavoriteActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameSearchFavoriteActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity$e;->a:Lcom/join/mgps/activity/GameSearchFavoriteActivity;

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

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity$e;->a:Lcom/join/mgps/activity/GameSearchFavoriteActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/GameSearchFavoriteActivity;->k:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 2
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string p3, "gameInfo"

    .line 3
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity$e;->a:Lcom/join/mgps/activity/GameSearchFavoriteActivity;

    const/4 p3, -0x1

    invoke-virtual {p1, p3, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/GameSearchFavoriteActivity$e;->a:Lcom/join/mgps/activity/GameSearchFavoriteActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
