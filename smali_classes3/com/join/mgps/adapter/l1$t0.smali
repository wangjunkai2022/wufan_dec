.class Lcom/join/mgps/adapter/l1$t0;
.super Ljava/lang/Object;
.source "GameDetialModleFourAdapter.java"

# interfaces
.implements Lit/sephiroth/android/library/widget/AdapterView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/l1;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/join/mgps/adapter/l1;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/l1;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/l1$t0;->b:Lcom/join/mgps/adapter/l1;

    iput-object p2, p0, Lcom/join/mgps/adapter/l1$t0;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lit/sephiroth/android/library/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lit/sephiroth/android/library/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/join/mgps/adapter/l1$t0;->b:Lcom/join/mgps/adapter/l1;

    invoke-static {p2}, Lcom/join/mgps/adapter/l1;->g(Lcom/join/mgps/adapter/l1;)Landroid/content/Context;

    move-result-object p2

    const-class p4, Lcom/join/mgps/activity/ImagePagerActivity;

    invoke-direct {p1, p2, p4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2
    iget-object p2, p0, Lcom/join/mgps/adapter/l1$t0;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    const/4 p4, 0x0

    .line 3
    :goto_0
    iget-object p5, p0, Lcom/join/mgps/adapter/l1$t0;->a:Ljava/util/List;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p5

    if-ge p4, p5, :cond_0

    .line 4
    iget-object p5, p0, Lcom/join/mgps/adapter/l1$t0;->a:Ljava/util/List;

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/join/mgps/dto/ImageInfo;

    invoke-virtual {p5}, Lcom/join/mgps/dto/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object p5

    aput-object p5, p2, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    const-string p4, "image_urls"

    .line 5
    invoke-virtual {p1, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "image_index"

    .line 6
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    iget-object p2, p0, Lcom/join/mgps/adapter/l1$t0;->b:Lcom/join/mgps/adapter/l1;

    invoke-static {p2}, Lcom/join/mgps/adapter/l1;->g(Lcom/join/mgps/adapter/l1;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
