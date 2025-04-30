.class Lcom/join/mgps/activity/TagAddActivity$i;
.super Ljava/lang/Object;
.source "TagAddActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/TagAddActivity;->H0(Lcom/join/mgps/dto/GameTagsBean;Lcom/join/mgps/customview/FlowLayout;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/join/mgps/dto/GameTagsBean;

.field final synthetic c:Lcom/join/mgps/activity/TagAddActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/TagAddActivity;ZLcom/join/mgps/dto/GameTagsBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/TagAddActivity$i;->c:Lcom/join/mgps/activity/TagAddActivity;

    iput-boolean p2, p0, Lcom/join/mgps/activity/TagAddActivity$i;->a:Z

    iput-object p3, p0, Lcom/join/mgps/activity/TagAddActivity$i;->b:Lcom/join/mgps/dto/GameTagsBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcom/join/mgps/activity/TagAddActivity$i;->a:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity$i;->b:Lcom/join/mgps/dto/GameTagsBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTagsBean;->getTagType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity$i;->b:Lcom/join/mgps/dto/GameTagsBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTagsBean;->getTagType()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity$i;->c:Lcom/join/mgps/activity/TagAddActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/TagGameListActivity_;->d1(Landroid/content/Context;)Lcom/join/mgps/activity/TagGameListActivity_$r;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/TagGameListActivity_$r;->b(I)Lcom/join/mgps/activity/TagGameListActivity_$r;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity$i;->b:Lcom/join/mgps/dto/GameTagsBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameTagsBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/TagGameListActivity_$r;->d(Ljava/lang/String;)Lcom/join/mgps/activity/TagGameListActivity_$r;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity$i;->b:Lcom/join/mgps/dto/GameTagsBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GameTagsBean;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/TagGameListActivity_$r;->e(I)Lcom/join/mgps/activity/TagGameListActivity_$r;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/activity/TagAddActivity$i;->b:Lcom/join/mgps/dto/GameTagsBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/GameTagsBean;->getTagType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/TagGameListActivity_$r;->f(Ljava/lang/String;)Lcom/join/mgps/activity/TagGameListActivity_$r;

    move-result-object p1

    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    :cond_1
    :goto_0
    return-void
.end method
