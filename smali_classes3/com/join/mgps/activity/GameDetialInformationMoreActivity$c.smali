.class Lcom/join/mgps/activity/GameDetialInformationMoreActivity$c;
.super Ljava/lang/Object;
.source "GameDetialInformationMoreActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameDetialInformationMoreActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetialInformationMoreActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$c;->a:Lcom/join/mgps/activity/GameDetialInformationMoreActivity;

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
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$c;->a:Lcom/join/mgps/activity/GameDetialInformationMoreActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->F0(Lcom/join/mgps/activity/GameDetialInformationMoreActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gt p3, p1, :cond_1

    if-gez p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$c;->a:Lcom/join/mgps/activity/GameDetialInformationMoreActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->F0(Lcom/join/mgps/activity/GameDetialInformationMoreActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/RecommendInfomationBean;

    .line 3
    new-instance p2, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    invoke-direct {p2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendInfomationBean;->getPost_id()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->setPid(I)V

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetialInformationMoreActivity$c;->a:Lcom/join/mgps/activity/GameDetialInformationMoreActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/GameDetialInformationMoreActivity;->G0(Lcom/join/mgps/activity/GameDetialInformationMoreActivity;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/join/mgps/Util/i0;->v0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
