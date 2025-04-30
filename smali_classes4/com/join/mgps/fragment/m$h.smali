.class Lcom/join/mgps/fragment/m$h;
.super Landroid/widget/BaseAdapter;
.source "CloudListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/m$h$a;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Lcom/join/mgps/fragment/m;


# direct methods
.method public constructor <init>(Lcom/join/mgps/fragment/m;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/m$h;->b:Lcom/join/mgps/fragment/m;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/join/mgps/fragment/m$h;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/m$h;->b:Lcom/join/mgps/fragment/m;

    iget-object v0, v0, Lcom/join/mgps/fragment/m;->t:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/m$h;->b:Lcom/join/mgps/fragment/m;

    iget-object v0, v0, Lcom/join/mgps/fragment/m;->t:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const-string p3, ""

    if-nez p2, :cond_0

    .line 1
    :try_start_0
    new-instance v0, Lcom/join/mgps/fragment/m$h$a;

    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/m$h$a;-><init>(Lcom/join/mgps/fragment/m$h;)V

    .line 2
    iget-object v1, p0, Lcom/join/mgps/fragment/m$h;->a:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c02f2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f090303

    .line 3
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/customview/ClouldItemView3;

    iput-object v1, v0, Lcom/join/mgps/fragment/m$h$a;->a:Lcom/join/mgps/customview/ClouldItemView3;

    const v1, 0x7f09095d

    .line 4
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcom/join/mgps/fragment/m$h$a;->b:Landroid/widget/LinearLayout;

    const v1, 0x7f091197

    .line 5
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/join/mgps/fragment/m$h$a;->c:Landroid/widget/TextView;

    const v1, 0x7f0911a7

    .line 6
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/join/mgps/fragment/m$h$a;->d:Landroid/widget/TextView;

    .line 7
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/fragment/m$h$a;

    .line 9
    :goto_0
    iget-object v1, v0, Lcom/join/mgps/fragment/m$h$a;->a:Lcom/join/mgps/customview/ClouldItemView3;

    iget-object v2, p0, Lcom/join/mgps/fragment/m$h;->b:Lcom/join/mgps/fragment/m;

    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/ClouldItemView3;->setCloudItemListener(Lcom/join/mgps/listener/c;)V

    .line 10
    iget-object v1, p0, Lcom/join/mgps/fragment/m$h;->b:Lcom/join/mgps/fragment/m;

    iget-object v1, v1, Lcom/join/mgps/fragment/m;->t:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v1, p1, :cond_1

    .line 11
    iget-object v2, v0, Lcom/join/mgps/fragment/m$h$a;->a:Lcom/join/mgps/customview/ClouldItemView3;

    iget-object v1, p0, Lcom/join/mgps/fragment/m$h;->b:Lcom/join/mgps/fragment/m;

    iget-object v3, v1, Lcom/join/mgps/fragment/m;->p:Ljava/lang/String;

    iget-object v1, v1, Lcom/join/mgps/fragment/m;->t:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/join/mgps/dto/CloudListDataBean;

    iget-object v9, p0, Lcom/join/mgps/fragment/m$h;->b:Lcom/join/mgps/fragment/m;

    iget v5, v9, Lcom/join/mgps/fragment/m;->o:I

    iget v6, v9, Lcom/join/mgps/fragment/m;->n:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v9}, Lcom/join/mgps/customview/ClouldItemView3;->setData(Ljava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;IIZZLcom/join/mgps/listener/c;)V

    goto :goto_1

    .line 12
    :cond_1
    iget-object v1, v0, Lcom/join/mgps/fragment/m$h$a;->a:Lcom/join/mgps/customview/ClouldItemView3;

    iget-object v2, p0, Lcom/join/mgps/fragment/m$h;->b:Lcom/join/mgps/fragment/m;

    iget-object v3, v2, Lcom/join/mgps/fragment/m;->p:Ljava/lang/String;

    iget-object v2, v2, Lcom/join/mgps/fragment/m;->t:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lcom/join/mgps/dto/CloudListDataBean;

    iget-object v8, p0, Lcom/join/mgps/fragment/m$h;->b:Lcom/join/mgps/fragment/m;

    iget v5, v8, Lcom/join/mgps/fragment/m;->o:I

    iget v6, v8, Lcom/join/mgps/fragment/m;->n:I

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v9

    invoke-virtual/range {v1 .. v8}, Lcom/join/mgps/customview/ClouldItemView3;->setData(Ljava/lang/String;Lcom/join/mgps/dto/CloudListDataBean;IIZZLcom/join/mgps/listener/c;)V

    .line 13
    :goto_1
    iget-object v1, v0, Lcom/join/mgps/fragment/m$h$a;->a:Lcom/join/mgps/customview/ClouldItemView3;

    iget-object v2, p0, Lcom/join/mgps/fragment/m$h;->b:Lcom/join/mgps/fragment/m;

    iget-object v2, v2, Lcom/join/mgps/fragment/m;->w:Lcom/join/mgps/activity/GameMainActivity3;

    iget-boolean v2, v2, Lcom/join/mgps/activity/GameMainActivity3;->k1:Z

    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/ClouldItemView3;->setGBAType(Z)V

    .line 14
    iget-object v1, v0, Lcom/join/mgps/fragment/m$h$a;->a:Lcom/join/mgps/customview/ClouldItemView3;

    iget-object v2, p0, Lcom/join/mgps/fragment/m$h;->b:Lcom/join/mgps/fragment/m;

    iget-object v2, v2, Lcom/join/mgps/fragment/m;->w:Lcom/join/mgps/activity/GameMainActivity3;

    iget-boolean v3, v2, Lcom/join/mgps/activity/GameMainActivity3;->m1:Z

    iget-boolean v2, v2, Lcom/join/mgps/activity/GameMainActivity3;->n1:Z

    invoke-virtual {v1, v3, v2}, Lcom/join/mgps/customview/ClouldItemView3;->setPGN(ZZ)V

    .line 15
    iget-object v1, p0, Lcom/join/mgps/fragment/m$h;->b:Lcom/join/mgps/fragment/m;

    iget v1, v1, Lcom/join/mgps/fragment/m;->n:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 16
    iget-object v1, v0, Lcom/join/mgps/fragment/m$h$a;->b:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 17
    iget-object v1, v0, Lcom/join/mgps/fragment/m$h$a;->c:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/join/mgps/fragment/m$h;->b:Lcom/join/mgps/fragment/m;

    iget-object v3, v3, Lcom/join/mgps/fragment/m;->t:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {v3}, Lcom/join/mgps/dto/CloudListDataBean;->getTodayCoin()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    iget-object v0, v0, Lcom/join/mgps/fragment/m$h$a;->d:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/join/mgps/fragment/m$h;->b:Lcom/join/mgps/fragment/m;

    iget-object v2, v2, Lcom/join/mgps/fragment/m;->t:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudListDataBean;->getTotalCoin()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 19
    :cond_2
    iget-object p1, v0, Lcom/join/mgps/fragment/m$h$a;->b:Landroid/widget/LinearLayout;

    const/16 p3, 0x8

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object p2
.end method
