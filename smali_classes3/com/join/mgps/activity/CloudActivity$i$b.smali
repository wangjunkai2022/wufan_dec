.class Lcom/join/mgps/activity/CloudActivity$i$b;
.super Ljava/lang/Object;
.source "CloudActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CloudActivity$i;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/join/mgps/activity/CloudActivity$i;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CloudActivity$i;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CloudActivity$i$b;->b:Lcom/join/mgps/activity/CloudActivity$i;

    iput p2, p0, Lcom/join/mgps/activity/CloudActivity$i$b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity$i$b;->b:Lcom/join/mgps/activity/CloudActivity$i;

    iget-object p1, p1, Lcom/join/mgps/activity/CloudActivity$i;->a:Lcom/join/mgps/activity/CloudActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/CloudActivity;->c:Ljava/util/List;

    iget v0, p0, Lcom/join/mgps/activity/CloudActivity$i$b;->a:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/CloudInfo;

    .line 2
    invoke-virtual {p1}, Lcom/join/mgps/dto/CloudInfo;->isSelect()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/CloudInfo;->setSelect(Z)V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity$i$b;->b:Lcom/join/mgps/activity/CloudActivity$i;

    iget-object p1, p1, Lcom/join/mgps/activity/CloudActivity$i;->a:Lcom/join/mgps/activity/CloudActivity;

    iget v0, p1, Lcom/join/mgps/activity/CloudActivity;->l:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/join/mgps/activity/CloudActivity;->l:I

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/CloudInfo;->setSelect(Z)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity$i$b;->b:Lcom/join/mgps/activity/CloudActivity$i;

    iget-object p1, p1, Lcom/join/mgps/activity/CloudActivity$i;->a:Lcom/join/mgps/activity/CloudActivity;

    iget v0, p1, Lcom/join/mgps/activity/CloudActivity;->l:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/join/mgps/activity/CloudActivity;->l:I

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity$i$b;->b:Lcom/join/mgps/activity/CloudActivity$i;

    iget-object p1, p1, Lcom/join/mgps/activity/CloudActivity$i;->a:Lcom/join/mgps/activity/CloudActivity;

    invoke-virtual {p1}, Lcom/join/mgps/activity/CloudActivity;->O0()V

    return-void
.end method
