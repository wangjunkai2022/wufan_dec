.class Lcom/join/mgps/fragment/j2$e;
.super Landroid/widget/BaseAdapter;
.source "GameFormFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/j2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/j2;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/j2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/j2$e;->a:Lcom/join/mgps/fragment/j2;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/j2$e;->a:Lcom/join/mgps/fragment/j2;

    invoke-static {v0}, Lcom/join/mgps/fragment/j2;->Q(Lcom/join/mgps/fragment/j2;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/j2$e;->a:Lcom/join/mgps/fragment/j2;

    invoke-static {v0}, Lcom/join/mgps/fragment/j2;->Q(Lcom/join/mgps/fragment/j2;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/fragment/j2$e;->a:Lcom/join/mgps/fragment/j2;

    iget-object p2, p2, Lcom/join/mgps/fragment/j2;->d:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c02a5

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    :cond_0
    iget-object p3, p0, Lcom/join/mgps/fragment/j2$e;->a:Lcom/join/mgps/fragment/j2;

    invoke-static {p3}, Lcom/join/mgps/fragment/j2;->Q(Lcom/join/mgps/fragment/j2;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$FamousBean;

    const p3, 0x7f09122b

    .line 3
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/facebook/drawee/view/SimpleDraweeView;

    const v0, 0x7f091237

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f09123d

    .line 5
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0904e6

    .line 6
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0909eb

    .line 7
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0809d9

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$FamousBean;->getPic()Ljava/lang/String;

    move-result-object v5

    invoke-static {p3, v4, v5}, Lcom/join/android/app/common/utils/MyImageLoader;->t(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 9
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6536\u85cf "

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$FamousBean;->getCount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$FamousBean;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameFromPopoWinBeanV2$FamousBean;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    new-instance p3, Lcom/join/mgps/fragment/j2$e$a;

    invoke-direct {p3, p0, p1}, Lcom/join/mgps/fragment/j2$e$a;-><init>(Lcom/join/mgps/fragment/j2$e;Lcom/join/mgps/dto/GameFromPopoWinBeanV2$FamousBean;)V

    invoke-virtual {v3, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
