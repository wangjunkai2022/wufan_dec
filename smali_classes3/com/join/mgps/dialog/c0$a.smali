.class Lcom/join/mgps/dialog/c0$a;
.super Ljava/lang/Object;
.source "CouponDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/c0;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/c0;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/c0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/c0$a;->a:Lcom/join/mgps/dialog/c0;

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

    const p1, 0x7f09024d

    .line 1
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    .line 2
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    if-nez p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/join/mgps/dialog/c0$a;->a:Lcom/join/mgps/dialog/c0;

    iget-object p2, p2, Lcom/join/mgps/dialog/c0;->f:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 4
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 p3, 0x0

    .line 5
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 6
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 7
    iget-object p5, p0, Lcom/join/mgps/dialog/c0$a;->a:Lcom/join/mgps/dialog/c0;

    iget-object p5, p5, Lcom/join/mgps/dialog/c0;->f:Ljava/util/Map;

    invoke-interface {p5, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/join/mgps/dto/CouponsData;

    .line 8
    invoke-virtual {p4}, Lcom/join/mgps/dto/CouponsData;->getMoney()I

    move-result p4

    add-int/2addr p3, p4

    goto :goto_0

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/dialog/c0$a;->a:Lcom/join/mgps/dialog/c0;

    invoke-static {p2}, Lcom/join/mgps/dialog/c0;->a(Lcom/join/mgps/dialog/c0;)I

    move-result p2

    if-lt p3, p2, :cond_1

    .line 10
    iget-object p1, p0, Lcom/join/mgps/dialog/c0$a;->a:Lcom/join/mgps/dialog/c0;

    invoke-static {p1}, Lcom/join/mgps/dialog/c0;->b(Lcom/join/mgps/dialog/c0;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string p2, "\u5df2\u8db3\u591f\u652f\u4ed8!"

    invoke-virtual {p1, p2}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 11
    :cond_1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
