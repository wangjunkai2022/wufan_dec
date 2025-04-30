.class Lcom/join/mgps/adapter/MGGameDetailAdapter$a0;
.super Ljava/lang/Object;
.source "MGGameDetailAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/MGGameDetailAdapter;->B(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    iput-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$a0;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$a0;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Lcom/join/mgps/adapter/MGGameDetailAdapter$u0;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$a0;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->e(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Lcom/join/mgps/adapter/MGGameDetailAdapter$u0;

    move-result-object v0

    iget-object v1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$a0;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/join/mgps/adapter/MGGameDetailAdapter$u0;->a(Ljava/lang/Boolean;)V

    .line 3
    check-cast p1, Landroid/widget/ImageView;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$a0;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    invoke-static {v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->f(Lcom/join/mgps/adapter/MGGameDetailAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080341

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$a0;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->g(Lcom/join/mgps/adapter/MGGameDetailAdapter;Z)Z

    goto :goto_0

    :cond_0
    const v0, 0x7f08042b

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/adapter/MGGameDetailAdapter$a0;->a:Lcom/join/mgps/adapter/MGGameDetailAdapter;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/join/mgps/adapter/MGGameDetailAdapter;->g(Lcom/join/mgps/adapter/MGGameDetailAdapter;Z)Z

    :cond_1
    :goto_0
    return-void
.end method
