.class Lcom/join/mgps/adapter/MGGameDetailAdapter$h0;
.super Ljava/lang/Object;
.source "MGGameDetailAdapter.java"

# interfaces
.implements Lcom/join/mgps/adapter/MGGameDetailAdapter$u0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter;-><init>(Landroid/content/Context;Lcom/join/mgps/dto/DetailResultBeanV3;Landroid/os/Handler;Landroid/widget/RelativeLayout;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/adapter/MGGameDetailAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/MGGameDetailAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$h0;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$h0;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->i(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$h0;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->i(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$h0;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->j(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$h0;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->j(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$h0;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->i(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$h0;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->i(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$h0;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->j(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$h0;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {p1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->j(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method
