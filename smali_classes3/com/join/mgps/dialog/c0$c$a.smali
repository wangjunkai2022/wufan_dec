.class Lcom/join/mgps/dialog/c0$c$a;
.super Ljava/lang/Object;
.source "CouponDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/c0$c;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/dialog/c0$c;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/c0$c;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/c0$c$a;->b:Lcom/join/mgps/dialog/c0$c;

    iput p2, p0, Lcom/join/mgps/dialog/c0$c$a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/c0$c$a;->b:Lcom/join/mgps/dialog/c0$c;

    iget-object p1, p1, Lcom/join/mgps/dialog/c0$c;->a:Lcom/join/mgps/dialog/c0;

    invoke-static {p1}, Lcom/join/mgps/dialog/c0;->e(Lcom/join/mgps/dialog/c0;)Ljava/util/List;

    move-result-object p1

    iget v0, p0, Lcom/join/mgps/dialog/c0$c$a;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CouponsData;

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/join/mgps/dialog/c0$c$a;->b:Lcom/join/mgps/dialog/c0$c;

    iget-object p2, p2, Lcom/join/mgps/dialog/c0$c;->a:Lcom/join/mgps/dialog/c0;

    iget-object p2, p2, Lcom/join/mgps/dialog/c0;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CouponsData;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/dialog/c0$c$a;->b:Lcom/join/mgps/dialog/c0$c;

    iget-object p2, p2, Lcom/join/mgps/dialog/c0$c;->a:Lcom/join/mgps/dialog/c0;

    iget-object p2, p2, Lcom/join/mgps/dialog/c0;->f:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/join/mgps/dto/CouponsData;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/dialog/c0$c$a;->b:Lcom/join/mgps/dialog/c0$c;

    iget-object p1, p1, Lcom/join/mgps/dialog/c0$c;->a:Lcom/join/mgps/dialog/c0;

    iget-object p1, p1, Lcom/join/mgps/dialog/c0;->f:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    .line 6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcom/join/mgps/dialog/c0$c$a;->b:Lcom/join/mgps/dialog/c0$c;

    iget-object v1, v1, Lcom/join/mgps/dialog/c0$c;->a:Lcom/join/mgps/dialog/c0;

    iget-object v1, v1, Lcom/join/mgps/dialog/c0;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/CouponsData;

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/dto/CouponsData;->getMoney()I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_1

    :cond_1
    int-to-float p1, p2

    .line 10
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-double p1, p1

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v0

    .line 11
    iget-object v0, p0, Lcom/join/mgps/dialog/c0$c$a;->b:Lcom/join/mgps/dialog/c0$c;

    iget-object v0, v0, Lcom/join/mgps/dialog/c0$c;->a:Lcom/join/mgps/dialog/c0;

    invoke-static {v0}, Lcom/join/mgps/dialog/c0;->f(Lcom/join/mgps/dialog/c0;)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u786e\u8ba4\uff08\u5df2\u9009\u62e9"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, "\u5143\uff09"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
