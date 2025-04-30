.class Lcom/join/mgps/activity/GameDetailActivity$n$c;
.super Ljava/lang/Object;
.source "GameDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameDetailActivity$n;->a(Lcom/join/mgps/activity/GameDetailActivity$m;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameDetailActivity$m;

.field final synthetic b:Lcom/join/mgps/activity/GameDetailActivity$n;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetailActivity$n;Lcom/join/mgps/activity/GameDetailActivity$m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$n$c;->b:Lcom/join/mgps/activity/GameDetailActivity$n;

    iput-object p2, p0, Lcom/join/mgps/activity/GameDetailActivity$n$c;->a:Lcom/join/mgps/activity/GameDetailActivity$m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$n$c;->a:Lcom/join/mgps/activity/GameDetailActivity$m;

    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity$m;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity$n$c;->b:Lcom/join/mgps/activity/GameDetailActivity$n;

    iget-object v1, v1, Lcom/join/mgps/activity/GameDetailActivity$n;->a:Lcom/join/mgps/activity/GameDetailActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0711c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 3
    div-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$n$c;->b:Lcom/join/mgps/activity/GameDetailActivity$n;

    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity$n;->a:Lcom/join/mgps/activity/GameDetailActivity;

    invoke-static {v0}, Lcom/join/mgps/activity/GameDetailActivity;->P0(Lcom/join/mgps/activity/GameDetailActivity;)I

    move-result v0

    .line 5
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  \u53ef\u4ee5\u663e\u793a\u884c\u6570\u884c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/join/mgps/Util/t0;->c(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity$n$c;->b:Lcom/join/mgps/activity/GameDetailActivity$n;

    iget-object v1, v1, Lcom/join/mgps/activity/GameDetailActivity$n;->a:Lcom/join/mgps/activity/GameDetailActivity;

    invoke-static {v1}, Lcom/join/mgps/activity/GameDetailActivity;->P0(Lcom/join/mgps/activity/GameDetailActivity;)I

    move-result v1

    if-nez v1, :cond_1

    .line 7
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity$n$c;->b:Lcom/join/mgps/activity/GameDetailActivity$n;

    iget-object v1, v1, Lcom/join/mgps/activity/GameDetailActivity$n;->a:Lcom/join/mgps/activity/GameDetailActivity;

    invoke-static {v1, v0}, Lcom/join/mgps/activity/GameDetailActivity;->Q0(Lcom/join/mgps/activity/GameDetailActivity;I)I

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/activity/GameDetailActivity$n$c;->a:Lcom/join/mgps/activity/GameDetailActivity$m;

    iget-object v1, v1, Lcom/join/mgps/activity/GameDetailActivity$m;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$n$c;->a:Lcom/join/mgps/activity/GameDetailActivity$m;

    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity$m;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$n$c;->a:Lcom/join/mgps/activity/GameDetailActivity$m;

    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity$m;->d:Landroid/widget/TextView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/GameDetailActivity$n$c;->a:Lcom/join/mgps/activity/GameDetailActivity$m;

    iget-object v0, v0, Lcom/join/mgps/activity/GameDetailActivity$m;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    :cond_3
    :goto_0
    return-void
.end method
