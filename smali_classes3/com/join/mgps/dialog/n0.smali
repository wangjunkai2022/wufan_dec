.class public Lcom/join/mgps/dialog/n0;
.super Landroid/app/AlertDialog;
.source "FightServerChoseDialog.java"


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/widget/ListView;

.field c:Lcom/join/mgps/adapter/u;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object p1, p0, Lcom/join/mgps/dialog/n0;->a:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 2
    iput-object p1, p0, Lcom/join/mgps/dialog/n0;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    new-instance v3, Lcom/join/mgps/data/a;

    invoke-direct {v3}, Lcom/join/mgps/data/a;-><init>()V

    const-string v4, "_"

    .line 4
    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/join/mgps/data/a;->c(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/join/mgps/data/a;->d(Ljava/lang/String;)V

    .line 6
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/n0;->c:Lcom/join/mgps/adapter/u;

    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/u;->b(Ljava/util/List;)V

    .line 8
    iget-object p1, p0, Lcom/join/mgps/dialog/n0;->c:Lcom/join/mgps/adapter/u;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    .line 2
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 3
    iget-object p1, p0, Lcom/join/mgps/dialog/n0;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0169

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const v0, 0x7f090210

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/dialog/n0$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/n0$a;-><init>(Lcom/join/mgps/dialog/n0;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0908e1

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/join/mgps/dialog/n0;->b:Landroid/widget/ListView;

    .line 8
    new-instance v0, Lcom/join/mgps/adapter/u;

    iget-object v1, p0, Lcom/join/mgps/dialog/n0;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/u;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/join/mgps/dialog/n0;->c:Lcom/join/mgps/adapter/u;

    .line 9
    iget-object v1, p0, Lcom/join/mgps/dialog/n0;->b:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->setContentView(Landroid/view/View;)V

    return-void
.end method
