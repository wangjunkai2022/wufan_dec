.class Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter$1;
.super Ljava/lang/Object;
.source "RecomendActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter;->onBindViewHolder(Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter;

.field final synthetic val$holder:Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;

.field final synthetic val$recomentBean:Lcom/join/mgps/activity/recomend/RecomentBean;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter;Lcom/join/mgps/activity/recomend/RecomentBean;Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter$1;->this$1:Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter;

    iput-object p2, p0, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter$1;->val$recomentBean:Lcom/join/mgps/activity/recomend/RecomentBean;

    iput-object p3, p0, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter$1;->val$holder:Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter$1;->val$recomentBean:Lcom/join/mgps/activity/recomend/RecomentBean;

    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecomentBean;->getIs_select()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter$1;->val$recomentBean:Lcom/join/mgps/activity/recomend/RecomentBean;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/join/mgps/activity/recomend/RecomentBean;->setIs_select(I)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter$1;->val$holder:Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;

    iget-object p1, p1, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;->selectbutn:Landroid/widget/ImageView;

    const v1, 0x7f0802f9

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter$1;->this$1:Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter;

    iget-object p1, p1, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter;->this$0:Lcom/join/mgps/activity/recomend/RecomendActivity;

    iget v1, p1, Lcom/join/mgps/activity/recomend/RecomendActivity;->selectedNumber:I

    sub-int/2addr v1, v0

    iput v1, p1, Lcom/join/mgps/activity/recomend/RecomendActivity;->selectedNumber:I

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter$1;->val$recomentBean:Lcom/join/mgps/activity/recomend/RecomentBean;

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/recomend/RecomentBean;->setIs_select(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter$1;->val$holder:Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;

    iget-object p1, p1, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentHolder;->selectbutn:Landroid/widget/ImageView;

    const v1, 0x7f0802fa

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter$1;->this$1:Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter;

    iget-object p1, p1, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter;->this$0:Lcom/join/mgps/activity/recomend/RecomendActivity;

    iget v1, p1, Lcom/join/mgps/activity/recomend/RecomendActivity;->selectedNumber:I

    add-int/2addr v1, v0

    iput v1, p1, Lcom/join/mgps/activity/recomend/RecomendActivity;->selectedNumber:I

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter$1;->this$1:Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter;

    iget-object p1, p1, Lcom/join/mgps/activity/recomend/RecomendActivity$CommentAdapter;->this$0:Lcom/join/mgps/activity/recomend/RecomendActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/recomend/RecomendActivity;->refreshEnterGame()V

    return-void
.end method
