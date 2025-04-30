.class public Lcom/join/mgps/dialog/g;
.super Ljava/lang/Object;
.source "ArenaCreateDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/dialog/g$c;,
        Lcom/join/mgps/dialog/g$d;
    }
.end annotation


# instance fields
.field private a:Landroid/app/Dialog;

.field b:Landroid/app/Activity;

.field c:Landroid/widget/ListView;

.field d:Lcom/join/mgps/fragment/roomlist/c$m;

.field e:I

.field f:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/join/mgps/fragment/roomlist/c$m;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/dialog/g;->e:I

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/join/mgps/dialog/g;->f:I

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dialog/g;->d:Lcom/join/mgps/fragment/roomlist/c$m;

    .line 5
    iput-object p1, p0, Lcom/join/mgps/dialog/g;->b:Landroid/app/Activity;

    .line 6
    invoke-virtual {p0, p1}, Lcom/join/mgps/dialog/g;->c(Landroid/app/Activity;)V

    return-void
.end method

.method private a(Lcom/join/mgps/dto/GameConfig;IZ)Lcom/join/mgps/dialog/g$c;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/dialog/g$c;

    invoke-direct {v0, p0}, Lcom/join/mgps/dialog/g$c;-><init>(Lcom/join/mgps/dialog/g;)V

    .line 2
    iput p2, v0, Lcom/join/mgps/dialog/g$c;->b:I

    .line 3
    iput-object p1, v0, Lcom/join/mgps/dialog/g$c;->a:Lcom/join/mgps/dto/GameConfig;

    .line 4
    iput-boolean p3, v0, Lcom/join/mgps/dialog/g$c;->c:Z

    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/g;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method c(Landroid/app/Activity;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/Dialog;

    const v1, 0x7f1204e2

    invoke-direct {v0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/join/mgps/dialog/g;->a:Landroid/app/Dialog;

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 5
    iget-object v1, p0, Lcom/join/mgps/dialog/g;->a:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 6
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c014e

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0907ee

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/join/mgps/dialog/g$a;

    invoke-direct {v1, p0}, Lcom/join/mgps/dialog/g$a;-><init>(Lcom/join/mgps/dialog/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0908de

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/join/mgps/dialog/g;->c:Landroid/widget/ListView;

    .line 9
    iget-object v0, p0, Lcom/join/mgps/dialog/g;->a:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/dialog/g;->a:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 12
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 13
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v0, 0x11

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    return-void
.end method

.method public d(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameConfig;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_7

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_2

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/GameConfig;

    if-nez p2, :cond_1

    .line 4
    iget v2, p0, Lcom/join/mgps/dialog/g;->f:I

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/join/mgps/dialog/g;->a(Lcom/join/mgps/dto/GameConfig;IZ)Lcom/join/mgps/dialog/g$c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/join/mgps/dto/GameConfig;

    .line 8
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameConfig;->getElite_match_switch()I

    move-result v5

    if-ne v5, v4, :cond_3

    .line 9
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_3
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 12
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/GameConfig;

    .line 13
    iget v3, p0, Lcom/join/mgps/dialog/g;->f:I

    invoke-direct {p0, v1, v3, v4}, Lcom/join/mgps/dialog/g;->a(Lcom/join/mgps/dto/GameConfig;IZ)Lcom/join/mgps/dialog/g$c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 14
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_6

    const/4 p1, 0x0

    .line 15
    iget v1, p0, Lcom/join/mgps/dialog/g;->e:I

    invoke-direct {p0, p1, v1, v4}, Lcom/join/mgps/dialog/g;->a(Lcom/join/mgps/dto/GameConfig;IZ)Lcom/join/mgps/dialog/g$c;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/GameConfig;

    .line 17
    iget v2, p0, Lcom/join/mgps/dialog/g;->f:I

    invoke-direct {p0, v1, v2, v4}, Lcom/join/mgps/dialog/g;->a(Lcom/join/mgps/dto/GameConfig;IZ)Lcom/join/mgps/dialog/g$c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 18
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/dialog/g;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/join/mgps/dialog/g$d;

    invoke-direct {v1, p0, v0}, Lcom/join/mgps/dialog/g$d;-><init>(Lcom/join/mgps/dialog/g;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 19
    iget-object p1, p0, Lcom/join/mgps/dialog/g;->c:Landroid/widget/ListView;

    new-instance v1, Lcom/join/mgps/dialog/g$b;

    invoke-direct {v1, p0, v0, p2}, Lcom/join/mgps/dialog/g$b;-><init>(Lcom/join/mgps/dialog/g;Ljava/util/List;Z)V

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_7
    :goto_4
    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dialog/g;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/join/mgps/dialog/g;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
