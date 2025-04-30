.class Lcom/join/mgps/activity/ClassifyGameActivity$d;
.super Ljava/lang/Object;
.source "ClassifyGameActivity.java"

# interfaces
.implements Lw0/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ClassifyGameActivity;->O0(Lcom/join/mgps/dto/ClassifyGameTagBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ClassifyGameActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ClassifyGameActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ClassifyGameActivity$d;->a:Lcom/join/mgps/activity/ClassifyGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselect(I)V
    .locals 0

    return-void
.end method

.method public onTabSelect(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity$d;->a:Lcom/join/mgps/activity/ClassifyGameActivity;

    invoke-virtual {v0}, Lcom/join/mgps/activity/ClassifyGameActivity;->S0()V

    .line 2
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity$d;->a:Lcom/join/mgps/activity/ClassifyGameActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/ClassifyGameActivity;->A:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity$d;->a:Lcom/join/mgps/activity/ClassifyGameActivity;

    iget-object v1, v0, Lcom/join/mgps/activity/ClassifyGameActivity;->A:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/ClassifyGameTagBean;

    invoke-virtual {v1}, Lcom/join/mgps/dto/ClassifyGameTagBean;->getId()I

    move-result v1

    iput v1, v0, Lcom/join/mgps/activity/ClassifyGameActivity;->v:I

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity$d;->a:Lcom/join/mgps/activity/ClassifyGameActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/ClassifyGameActivity;->O0(Lcom/join/mgps/dto/ClassifyGameTagBean;)V

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/ClassifyGameActivity$d;->a:Lcom/join/mgps/activity/ClassifyGameActivity;

    iget-object v1, v0, Lcom/join/mgps/activity/ClassifyGameActivity;->s:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/join/mgps/activity/ClassifyGameActivity;->E0(Lcom/join/mgps/activity/ClassifyGameActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
