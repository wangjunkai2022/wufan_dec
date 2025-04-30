.class Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter$1;
.super Ljava/lang/Object;
.source "ScreenShortListFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter$1;->this$1:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;

    iput p2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter$1;->this$1:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;

    iget-object v0, v0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;

    iget-object v0, v0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->allItemBeans:Ljava/util/List;

    check-cast v0, Ljava/io/Serializable;

    const-string v1, "datas"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter$1;->this$1:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;

    iget-object v0, v0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;

    iget-object v0, v0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity_$IntentBuilder_;

    move-result-object v0

    iget v2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter$1;->val$position:I

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity_$IntentBuilder_;->position(I)Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity_$IntentBuilder_;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter$1;->this$1:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;

    iget-object v2, v2, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;

    iget v2, v2, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->pn:I

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity_$IntentBuilder_;->pn(I)Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity_$IntentBuilder_;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter$1;->this$1:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;

    iget-object v2, v2, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;

    iget-object v2, v2, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->gameId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity_$IntentBuilder_;->gameId(Ljava/lang/String;)Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity_$IntentBuilder_;

    move-result-object v0

    iget-object v2, p0, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter$1;->this$1:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;

    iget-object v2, v2, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment$ScreenShortAdapter;->this$0:Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;

    iget v2, v2, Lcom/join/mgps/activity/screenshot/ScreenShortListFragment;->typeId:I

    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity_$IntentBuilder_;->typeId(I)Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity_$IntentBuilder_;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lorg/androidannotations/api/builder/e;->extra(Ljava/lang/String;Landroid/os/Bundle;)Lorg/androidannotations/api/builder/e;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/screenshot/ScreenShortBigImagActivity_$IntentBuilder_;

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    return-void
.end method
