.class Lcom/join/mgps/dialog/g$b;
.super Ljava/lang/Object;
.source "ArenaCreateDialog.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/g;->d(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Z

.field final synthetic c:Lcom/join/mgps/dialog/g;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/g;Ljava/util/List;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/g$b;->c:Lcom/join/mgps/dialog/g;

    iput-object p2, p0, Lcom/join/mgps/dialog/g$b;->a:Ljava/util/List;

    iput-boolean p3, p0, Lcom/join/mgps/dialog/g$b;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/g$b;->a:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dialog/g$c;

    .line 2
    iget p1, p1, Lcom/join/mgps/dialog/g$c;->b:I

    iget-object p2, p0, Lcom/join/mgps/dialog/g$b;->c:Lcom/join/mgps/dialog/g;

    iget p2, p2, Lcom/join/mgps/dialog/g;->e:I

    if-ne p1, p2, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/g$b;->a:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dialog/g$c;

    iget-object p1, p1, Lcom/join/mgps/dialog/g$c;->a:Lcom/join/mgps/dto/GameConfig;

    .line 4
    iget-boolean p2, p0, Lcom/join/mgps/dialog/g$b;->b:Z

    if-nez p2, :cond_1

    .line 5
    iget-object p2, p0, Lcom/join/mgps/dialog/g$b;->c:Lcom/join/mgps/dialog/g;

    invoke-virtual {p2}, Lcom/join/mgps/dialog/g;->b()V

    .line 6
    iget-object p2, p0, Lcom/join/mgps/dialog/g$b;->c:Lcom/join/mgps/dialog/g;

    iget-object p2, p2, Lcom/join/mgps/dialog/g;->d:Lcom/join/mgps/fragment/roomlist/c$m;

    invoke-interface {p2, p1}, Lcom/join/mgps/fragment/roomlist/c$m;->d(Lcom/join/mgps/dto/GameConfig;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/dialog/g$b;->c:Lcom/join/mgps/dialog/g;

    invoke-virtual {p2}, Lcom/join/mgps/dialog/g;->b()V

    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameConfig;->getElite_match_switch()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_2

    .line 9
    iget-object p2, p0, Lcom/join/mgps/dialog/g$b;->c:Lcom/join/mgps/dialog/g;

    iget-object p2, p2, Lcom/join/mgps/dialog/g;->d:Lcom/join/mgps/fragment/roomlist/c$m;

    invoke-interface {p2, p1}, Lcom/join/mgps/fragment/roomlist/c$m;->d(Lcom/join/mgps/dto/GameConfig;)V

    :cond_2
    :goto_0
    return-void
.end method
