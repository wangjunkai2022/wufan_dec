.class Lcom/join/mgps/adapter/l1$q0$a;
.super Ljava/lang/Object;
.source "GameDetialModleFourAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/l1$q0;->onViewAttachedToWindow(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/l1$q0;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/l1$q0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/l1$q0$a;->a:Lcom/join/mgps/adapter/l1$q0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/l1$q0$a;->a:Lcom/join/mgps/adapter/l1$q0;

    iget-object v0, v0, Lcom/join/mgps/adapter/l1$q0;->a:Lcom/join/mgps/adapter/l1$m1;

    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->d(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    if-lez v2, :cond_3

    add-int/lit8 v2, v2, -0x1

    .line 3
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/l1$q0$a;->a:Lcom/join/mgps/adapter/l1$q0;

    iget-object v0, v0, Lcom/join/mgps/adapter/l1$q0;->a:Lcom/join/mgps/adapter/l1$m1;

    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->r(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/l1$q0$a;->a:Lcom/join/mgps/adapter/l1$q0;

    iget-object v0, v0, Lcom/join/mgps/adapter/l1$q0;->c:Lcom/join/mgps/adapter/l1;

    invoke-static {v0}, Lcom/join/mgps/adapter/l1;->i(Lcom/join/mgps/adapter/l1;)Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/join/mgps/adapter/l1$q0$a;->a:Lcom/join/mgps/adapter/l1$q0;

    iget v3, v3, Lcom/join/mgps/adapter/l1$q0;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/join/mgps/adapter/l1$q0$a;->a:Lcom/join/mgps/adapter/l1$q0;

    iget-object v0, v0, Lcom/join/mgps/adapter/l1$q0;->a:Lcom/join/mgps/adapter/l1$m1;

    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->r(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/l1$q0$a;->a:Lcom/join/mgps/adapter/l1$q0;

    iget-object v0, v0, Lcom/join/mgps/adapter/l1$q0;->a:Lcom/join/mgps/adapter/l1$m1;

    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->r(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/adapter/l1$q0$a;->a:Lcom/join/mgps/adapter/l1$q0;

    iget-object v0, v0, Lcom/join/mgps/adapter/l1$q0;->a:Lcom/join/mgps/adapter/l1$m1;

    invoke-static {v0}, Lcom/join/mgps/adapter/l1$m1;->r(Lcom/join/mgps/adapter/l1$m1;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method
