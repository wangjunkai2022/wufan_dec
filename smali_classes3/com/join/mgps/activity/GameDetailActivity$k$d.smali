.class Lcom/join/mgps/activity/GameDetailActivity$k$d;
.super Ljava/lang/Object;
.source "GameDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameDetailActivity$k;->b(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GameListItemBean;

.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/activity/GameDetailActivity$k;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetailActivity$k;Lcom/join/mgps/dto/GameListItemBean;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$k$d;->c:Lcom/join/mgps/activity/GameDetailActivity$k;

    iput-object p2, p0, Lcom/join/mgps/activity/GameDetailActivity$k$d;->a:Lcom/join/mgps/dto/GameListItemBean;

    iput p3, p0, Lcom/join/mgps/activity/GameDetailActivity$k$d;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$k$d;->c:Lcom/join/mgps/activity/GameDetailActivity$k;

    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity;->x0:Ljava/util/List;

    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$k$d;->a:Lcom/join/mgps/dto/GameListItemBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$k$d;->c:Lcom/join/mgps/activity/GameDetailActivity$k;

    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget v0, p0, Lcom/join/mgps/activity/GameDetailActivity$k$d;->b:I

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/GameDetailActivity;->F0(I)V

    return-void
.end method
