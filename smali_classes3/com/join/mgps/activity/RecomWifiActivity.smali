.class public Lcom/join/mgps/activity/RecomWifiActivity;
.super Lcom/BaseActivity;
.source "RecomWifiActivity.java"

# interfaces
.implements Lo1/d;


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0c0557
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field b:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field c:Landroid/widget/GridView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public E0()Lo1/d;
    .locals 0

    return-object p0
.end method

.method afterview()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/RecomeWifiDatabean;

    .line 2
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomeWifiDatabean;->getGame_list()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/join/mgps/activity/RecomWifiActivity;->f:Ljava/util/List;

    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/RecomeWifiDatabean;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/join/mgps/Util/d2;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/RecomWifiActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/RecomWifiActivity;->b:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    invoke-static {}, Lg1/f;->G()Lg1/f;

    move-result-object v0

    invoke-virtual {v0}, Lg1/f;->d()Ljava/util/List;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/RecomWifiActivity;->a:Landroid/widget/ImageView;

    new-instance v2, Lcom/join/mgps/activity/RecomWifiActivity$a;

    invoke-direct {v2, p0}, Lcom/join/mgps/activity/RecomWifiActivity$a;-><init>(Lcom/join/mgps/activity/RecomWifiActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    new-instance v1, Lcom/join/mgps/adapter/z4;

    iget-object v2, p0, Lcom/join/mgps/activity/RecomWifiActivity;->f:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/join/mgps/adapter/z4;-><init>(Lcom/join/mgps/activity/RecomWifiActivity;Ljava/util/List;)V

    const/4 v2, 0x0

    .line 10
    iget-object v3, p0, Lcom/join/mgps/activity/RecomWifiActivity;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 11
    invoke-virtual {v4}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    add-float/2addr v2, v4

    goto :goto_0

    .line 13
    :cond_1
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v4, ".00"

    invoke-direct {v3, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v4, v2

    .line 14
    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .line 15
    iget-object v3, p0, Lcom/join/mgps/activity/RecomWifiActivity;->d:Landroid/widget/Button;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4e0b\u8f7d\uff08"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/join/mgps/activity/RecomWifiActivity;->f:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\u4e2a\uff0c\u5171"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MB)"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v2, p0, Lcom/join/mgps/activity/RecomWifiActivity;->c:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 17
    iget-object v2, p0, Lcom/join/mgps/activity/RecomWifiActivity;->d:Landroid/widget/Button;

    new-instance v3, Lcom/join/mgps/activity/RecomWifiActivity$b;

    invoke-direct {v3, p0, v1, v0}, Lcom/join/mgps/activity/RecomWifiActivity$b;-><init>(Lcom/join/mgps/activity/RecomWifiActivity;Lcom/join/mgps/adapter/z4;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public p(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 2
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    add-float/2addr v1, v2

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, ".00"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    float-to-double v1, v1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/RecomWifiActivity;->d:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e0b\u8f7d\uff08"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\u4e2a\uff0c\u5171"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "MB)"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
