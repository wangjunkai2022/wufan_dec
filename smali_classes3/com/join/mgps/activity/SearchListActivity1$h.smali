.class Lcom/join/mgps/activity/SearchListActivity1$h;
.super Ljava/lang/Object;
.source "SearchListActivity1.java"

# interfaces
.implements Lcom/nineoldandroids/animation/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SearchListActivity1;->P0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/join/mgps/activity/SearchListActivity1;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SearchListActivity1;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$h;->b:Lcom/join/mgps/activity/SearchListActivity1;

    iput-boolean p2, p0, Lcom/join/mgps/activity/SearchListActivity1$h;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/nineoldandroids/animation/a;)V
    .locals 0

    return-void
.end method

.method public b(Lcom/nineoldandroids/animation/a;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/nineoldandroids/animation/a;)V
    .locals 0

    return-void
.end method

.method public d(Lcom/nineoldandroids/animation/a;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$h;->b:Lcom/join/mgps/activity/SearchListActivity1;

    iget-object p1, p1, Lcom/join/mgps/activity/SearchListActivity1;->b:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$h;->b:Lcom/join/mgps/activity/SearchListActivity1;

    iget-object p1, p1, Lcom/join/mgps/activity/SearchListActivity1;->j:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-boolean p1, p0, Lcom/join/mgps/activity/SearchListActivity1$h;->a:Z

    if-eqz p1, :cond_3

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1$h;->b:Lcom/join/mgps/activity/SearchListActivity1;

    iget-object p1, p1, Lcom/join/mgps/activity/SearchListActivity1;->d:Lcom/zhy/view/flowlayout/TagFlowLayout3;

    invoke-virtual {p1}, Lcom/zhy/view/flowlayout/TagFlowLayout3;->getSelectedPosition()I

    move-result p1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$h;->b:Lcom/join/mgps/activity/SearchListActivity1;

    iget-object v0, v0, Lcom/join/mgps/activity/SearchListActivity1;->q:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-ge p1, v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$h;->b:Lcom/join/mgps/activity/SearchListActivity1;

    iget-object v0, v0, Lcom/join/mgps/activity/SearchListActivity1;->q:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/ClassifyGameTagBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/ClassifyGameTagBean;->getId()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$h;->b:Lcom/join/mgps/activity/SearchListActivity1;

    iget-object v0, v0, Lcom/join/mgps/activity/SearchListActivity1;->c:Lcom/zhy/view/flowlayout/TagFlowLayout3;

    invoke-virtual {v0}, Lcom/zhy/view/flowlayout/TagFlowLayout3;->getSelectedPosition()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 8
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1$h;->b:Lcom/join/mgps/activity/SearchListActivity1;

    iget v2, v0, Lcom/join/mgps/activity/SearchListActivity1;->s:I

    if-ne p1, v2, :cond_2

    iget p1, v0, Lcom/join/mgps/activity/SearchListActivity1;->t:I

    if-eq v1, p1, :cond_3

    .line 9
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/activity/SearchListActivity1;->V0()V

    :cond_3
    return-void
.end method
