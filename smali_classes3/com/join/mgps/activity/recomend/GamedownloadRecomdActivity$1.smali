.class Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;
.super Ljava/lang/Object;
.source "GamedownloadRecomdActivity.java"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->afterview()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;

.field final synthetic val$h:I


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;->this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;

    iput p2, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;->val$h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;->this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getY()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;->this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getY()F

    move-result p1

    iget-object v0, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;->this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0713aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;->this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->gamedatas:Ljava/util/List;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x6

    if-le p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;->this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->adapter:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    iget-object p1, p1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->gamedatas:Ljava/util/List;

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->sendPoint(Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;->this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;

    iget-object v0, p1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->adapter:Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;

    iget-object p1, p1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->gamedatas:Ljava/util/List;

    const/4 v1, 0x5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/mygame/adapter/DetailRecyclerViewChileAdapter;->sendPoint(Lcom/join/mgps/activity/recomend/GamedownRecomendItemBean;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;->this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->speedLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_2

    .line 6
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;->val$h:I

    if-le p1, p2, :cond_1

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;->this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->close2:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;->this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->close:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;->this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->close2:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;->this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->close:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;->this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->close3:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;->this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->close2:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity$1;->this$0:Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/recomend/GamedownloadRecomdActivity;->close:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
