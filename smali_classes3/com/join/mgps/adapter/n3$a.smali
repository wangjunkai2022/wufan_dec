.class Lcom/join/mgps/adapter/n3$a;
.super Ljava/lang/Object;
.source "MyGameEditAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/n3;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/adapter/n3$b;

.field final synthetic c:Lcom/join/mgps/adapter/n3;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/n3;ILcom/join/mgps/adapter/n3$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/n3$a;->c:Lcom/join/mgps/adapter/n3;

    iput p2, p0, Lcom/join/mgps/adapter/n3$a;->a:I

    iput-object p3, p0, Lcom/join/mgps/adapter/n3$a;->b:Lcom/join/mgps/adapter/n3$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/adapter/n3$a;->c:Lcom/join/mgps/adapter/n3;

    iget-object p1, p1, Lcom/join/mgps/adapter/n3;->c:Ljava/util/HashMap;

    iget v0, p0, Lcom/join/mgps/adapter/n3$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/adapter/n3$a;->c:Lcom/join/mgps/adapter/n3;

    iget-object p1, p1, Lcom/join/mgps/adapter/n3;->c:Ljava/util/HashMap;

    iget v0, p0, Lcom/join/mgps/adapter/n3$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p1, p0, Lcom/join/mgps/adapter/n3$a;->b:Lcom/join/mgps/adapter/n3$b;

    iget-object p1, p1, Lcom/join/mgps/adapter/n3$b;->a:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/n3$a;->c:Lcom/join/mgps/adapter/n3;

    iget-object p1, p1, Lcom/join/mgps/adapter/n3;->c:Ljava/util/HashMap;

    iget v0, p0, Lcom/join/mgps/adapter/n3$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/join/mgps/adapter/n3$a;->b:Lcom/join/mgps/adapter/n3$b;

    iget-object p1, p1, Lcom/join/mgps/adapter/n3$b;->a:Landroid/widget/ImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/adapter/n3$a;->c:Lcom/join/mgps/adapter/n3;

    invoke-static {p1}, Lcom/join/mgps/adapter/n3;->a(Lcom/join/mgps/adapter/n3;)Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Lcom/join/mgps/activity/MyGameEditActivity;

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/join/mgps/adapter/n3$a;->c:Lcom/join/mgps/adapter/n3;

    invoke-static {p1}, Lcom/join/mgps/adapter/n3;->a(Lcom/join/mgps/adapter/n3;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/activity/MyGameEditActivity;

    iget-object v0, p0, Lcom/join/mgps/adapter/n3$a;->c:Lcom/join/mgps/adapter/n3;

    iget-object v0, v0, Lcom/join/mgps/adapter/n3;->c:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/MyGameEditActivity;->R0(Ljava/util/HashMap;)V

    :cond_1
    return-void
.end method
