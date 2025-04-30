.class Lcom/join/mgps/activity/GameMainActivity3$i$b;
.super Landroid/widget/BaseAdapter;
.source "GameMainActivity3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameMainActivity3$i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameMainActivity3$i;


# direct methods
.method private constructor <init>(Lcom/join/mgps/activity/GameMainActivity3$i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3$i$b;->a:Lcom/join/mgps/activity/GameMainActivity3$i;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/join/mgps/activity/GameMainActivity3$i;Lcom/join/mgps/activity/GameMainActivity3$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/GameMainActivity3$i$b;-><init>(Lcom/join/mgps/activity/GameMainActivity3$i;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3$i$b;->a:Lcom/join/mgps/activity/GameMainActivity3$i;

    iget-object v0, v0, Lcom/join/mgps/activity/GameMainActivity3$i;->a:Lcom/join/mgps/activity/GameMainActivity3;

    iget-object v0, v0, Lcom/join/mgps/activity/GameMainActivity3;->D0:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3$i$b;->a:Lcom/join/mgps/activity/GameMainActivity3$i;

    iget-object v0, v0, Lcom/join/mgps/activity/GameMainActivity3$i;->a:Lcom/join/mgps/activity/GameMainActivity3;

    iget-object v0, v0, Lcom/join/mgps/activity/GameMainActivity3;->D0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/GameMainActivity3$i$b;->a:Lcom/join/mgps/activity/GameMainActivity3$i;

    iget-object p2, p2, Lcom/join/mgps/activity/GameMainActivity3$i;->a:Lcom/join/mgps/activity/GameMainActivity3;

    invoke-static {p2}, Lcom/join/mgps/activity/GameMainActivity3;->y1(Lcom/join/mgps/activity/GameMainActivity3;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0c0191

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    const p3, 0x7f090acd

    .line 2
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/GameMainActivity3$i$b;->a:Lcom/join/mgps/activity/GameMainActivity3$i;

    iget-object v0, v0, Lcom/join/mgps/activity/GameMainActivity3$i;->a:Lcom/join/mgps/activity/GameMainActivity3;

    iget-object v0, v0, Lcom/join/mgps/activity/GameMainActivity3;->D0:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/join/mgps/dto/PspBattleServer;

    invoke-virtual {v0}, Lcom/join/mgps/dto/PspBattleServer;->getServer_name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f090304

    .line 4
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/join/mgps/activity/GameMainActivity3$i$b;->a:Lcom/join/mgps/activity/GameMainActivity3$i;

    iget-object v1, v1, Lcom/join/mgps/activity/GameMainActivity3$i;->a:Lcom/join/mgps/activity/GameMainActivity3;

    iget-object v1, v1, Lcom/join/mgps/activity/GameMainActivity3;->D0:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/PspBattleServer;

    invoke-virtual {p1}, Lcom/join/mgps/dto/PspBattleServer;->getPeople()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u4eba"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
