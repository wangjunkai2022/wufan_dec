.class Lcom/join/mgps/activity/GameDetailActivity$k$c;
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

.field final synthetic b:Lcom/join/mgps/activity/GameDetailActivity$l;

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/activity/GameDetailActivity$k;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetailActivity$k;Lcom/join/mgps/dto/GameListItemBean;Lcom/join/mgps/activity/GameDetailActivity$l;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$k$c;->d:Lcom/join/mgps/activity/GameDetailActivity$k;

    iput-object p2, p0, Lcom/join/mgps/activity/GameDetailActivity$k$c;->a:Lcom/join/mgps/dto/GameListItemBean;

    iput-object p3, p0, Lcom/join/mgps/activity/GameDetailActivity$k$c;->b:Lcom/join/mgps/activity/GameDetailActivity$l;

    iput p4, p0, Lcom/join/mgps/activity/GameDetailActivity$k$c;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$k$c;->d:Lcom/join/mgps/activity/GameDetailActivity$k;

    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity;->t0:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getIs_self()Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$k$c;->d:Lcom/join/mgps/activity/GameDetailActivity$k;

    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity;->t0:Lcom/join/mgps/dto/ForumResponseGame$Datadetails;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumResponseGame$Datadetails;->getTv_btn()I

    move-result p1

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$k$c;->a:Lcom/join/mgps/dto/GameListItemBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCustomer_info()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$k$c;->a:Lcom/join/mgps/dto/GameListItemBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getCustomer_info()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$k$c;->d:Lcom/join/mgps/activity/GameDetailActivity$k;

    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$k$c;->a:Lcom/join/mgps/dto/GameListItemBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCustomer_info()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/join/mgps/activity/GameDetailActivity;->M0:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$k$c;->d:Lcom/join/mgps/activity/GameDetailActivity$k;

    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$k$c;->a:Lcom/join/mgps/dto/GameListItemBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/join/mgps/activity/GameDetailActivity;->M0:Ljava/lang/String;

    .line 5
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$k$c;->d:Lcom/join/mgps/activity/GameDetailActivity$k;

    iget-object v0, p1, Lcom/join/mgps/activity/GameDetailActivity$k;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity$k$c;->b:Lcom/join/mgps/activity/GameDetailActivity$l;

    iget-object v2, v0, Lcom/join/mgps/activity/GameDetailActivity;->M0:Ljava/lang/String;

    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$k$c;->a:Lcom/join/mgps/dto/GameListItemBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_id()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/join/mgps/activity/GameDetailActivity$k$c;->a:Lcom/join/mgps/dto/GameListItemBean;

    const/4 v5, 0x2

    iget v6, p0, Lcom/join/mgps/activity/GameDetailActivity$k$c;->c:I

    invoke-virtual/range {v0 .. v6}, Lcom/join/mgps/activity/GameDetailActivity;->f1(Lcom/join/mgps/activity/GameDetailActivity$l;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/GameListItemBean;II)V

    :cond_1
    return-void
.end method
