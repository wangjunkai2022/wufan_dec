.class Lcom/join/mgps/dialog/c0$b;
.super Ljava/lang/Object;
.source "CouponDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/join/mgps/dialog/c0$b;->a:Lcom/join/mgps/dialog/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/c0$b;->a:Lcom/join/mgps/dialog/c0;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/dialog/c0$b;->a:Lcom/join/mgps/dialog/c0;

    iget-object p1, p1, Lcom/join/mgps/dialog/c0;->f:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/c0$b;->a:Lcom/join/mgps/dialog/c0;

    iget-object p1, p1, Lcom/join/mgps/dialog/c0;->f:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 7
    iget-object v2, p0, Lcom/join/mgps/dialog/c0$b;->a:Lcom/join/mgps/dialog/c0;

    iget-object v2, v2, Lcom/join/mgps/dialog/c0;->f:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/CouponsData;

    .line 8
    invoke-virtual {v1}, Lcom/join/mgps/dto/CouponsData;->getMoney()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/dialog/c0$b;->a:Lcom/join/mgps/dialog/c0;

    invoke-static {p1}, Lcom/join/mgps/dialog/c0;->c(Lcom/join/mgps/dialog/c0;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 10
    iget-object p1, p0, Lcom/join/mgps/dialog/c0$b;->a:Lcom/join/mgps/dialog/c0;

    invoke-static {p1}, Lcom/join/mgps/dialog/c0;->a(Lcom/join/mgps/dialog/c0;)I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 11
    iget-object p1, p0, Lcom/join/mgps/dialog/c0$b;->a:Lcom/join/mgps/dialog/c0;

    invoke-static {p1}, Lcom/join/mgps/dialog/c0;->b(Lcom/join/mgps/dialog/c0;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u91d1\u989d\u4e0d\u8db3"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 12
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/dialog/c0$b;->a:Lcom/join/mgps/dialog/c0;

    invoke-static {p1}, Lcom/join/mgps/dialog/c0;->d(Lcom/join/mgps/dialog/c0;)Lo1/c;

    move-result-object p1

    iget-object v0, p0, Lcom/join/mgps/dialog/c0$b;->a:Lcom/join/mgps/dialog/c0;

    iget-object v0, v0, Lcom/join/mgps/dialog/c0;->f:Ljava/util/Map;

    invoke-interface {p1, v0}, Lo1/c;->a(Ljava/util/Map;)V

    return-void
.end method
