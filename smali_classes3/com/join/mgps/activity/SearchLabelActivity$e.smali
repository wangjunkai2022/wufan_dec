.class Lcom/join/mgps/activity/SearchLabelActivity$e;
.super Ljava/lang/Object;
.source "SearchLabelActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SearchLabelActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/SearchLabelActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SearchLabelActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SearchLabelActivity$e;->a:Lcom/join/mgps/activity/SearchLabelActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/SearchLabelActivity$e;->a:Lcom/join/mgps/activity/SearchLabelActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/SearchLabelActivity;->g:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/LabelBean;

    .line 2
    iget-object p2, p0, Lcom/join/mgps/activity/SearchLabelActivity$e;->a:Lcom/join/mgps/activity/SearchLabelActivity;

    iget p3, p2, Lcom/join/mgps/activity/SearchLabelActivity;->a:I

    const/4 p4, 0x1

    if-ne p3, p4, :cond_0

    .line 3
    invoke-static {p2}, Lcom/join/mgps/activity/label/MainLabelActivity_;->j1(Landroid/content/Context;)Lcom/join/mgps/activity/label/MainLabelActivity_$r;

    move-result-object p2

    invoke-virtual {p1}, Lcom/join/mgps/dto/LabelBean;->getTag_id()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/join/mgps/activity/label/MainLabelActivity_$r;->d(I)Lcom/join/mgps/activity/label/MainLabelActivity_$r;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    goto :goto_0

    .line 4
    :cond_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string p3, "label"

    .line 5
    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/SearchLabelActivity$e;->a:Lcom/join/mgps/activity/SearchLabelActivity;

    const/4 p3, -0x1

    invoke-virtual {p1, p3, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/SearchLabelActivity$e;->a:Lcom/join/mgps/activity/SearchLabelActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
