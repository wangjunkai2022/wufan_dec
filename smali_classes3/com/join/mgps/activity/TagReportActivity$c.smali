.class Lcom/join/mgps/activity/TagReportActivity$c;
.super Ljava/lang/Object;
.source "TagReportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/TagReportActivity;->E0(Lcom/join/mgps/dto/GameTagsBean;Lcom/join/mgps/customview/FlowLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dto/GameTagsBean;

.field final synthetic b:Lcom/join/mgps/activity/TagReportActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/TagReportActivity;Lcom/join/mgps/dto/GameTagsBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/TagReportActivity$c;->b:Lcom/join/mgps/activity/TagReportActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/TagReportActivity$c;->a:Lcom/join/mgps/dto/GameTagsBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/TagReportActivity$c;->b:Lcom/join/mgps/activity/TagReportActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/TagReportActivity;->e:Lcom/join/mgps/customview/FlowLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/TagReportActivity$c;->b:Lcom/join/mgps/activity/TagReportActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/TagReportActivity;->l:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/GameTagsBean;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/GameTagsBean;->setChecked(Z)V

    .line 4
    iget-object v1, p0, Lcom/join/mgps/activity/TagReportActivity$c;->a:Lcom/join/mgps/dto/GameTagsBean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/GameTagsBean;->setChecked(Z)V

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/TagReportActivity$c;->b:Lcom/join/mgps/activity/TagReportActivity;

    iget-object v2, v1, Lcom/join/mgps/activity/TagReportActivity;->e:Lcom/join/mgps/customview/FlowLayout;

    invoke-static {v1, v0, v2}, Lcom/join/mgps/activity/TagReportActivity;->D0(Lcom/join/mgps/activity/TagReportActivity;Lcom/join/mgps/dto/GameTagsBean;Lcom/join/mgps/customview/FlowLayout;)V

    goto :goto_0

    :cond_0
    return-void
.end method
