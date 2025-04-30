.class Lcom/join/mgps/activity/TagReportActivity$b;
.super Ljava/lang/Object;
.source "TagReportActivity.java"

# interfaces
.implements Lcom/papa91/arc/interfaces/IOnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/TagReportActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/TagReportActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/TagReportActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/TagReportActivity$b;->a:Lcom/join/mgps/activity/TagReportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity$b;->a:Lcom/join/mgps/activity/TagReportActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/TagReportActivity;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/TagReportReasonBean;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/TagReportReasonBean;->setChecked(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/TagReportActivity$b;->a:Lcom/join/mgps/activity/TagReportActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/TagReportActivity;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/TagReportReasonBean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/TagReportReasonBean;->setChecked(Z)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/TagReportActivity$b;->a:Lcom/join/mgps/activity/TagReportActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/TagReportActivity;->m:Lcom/papa91/arc/adapter/SimpleBaseAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
