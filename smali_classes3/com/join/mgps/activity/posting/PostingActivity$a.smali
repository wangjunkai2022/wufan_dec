.class Lcom/join/mgps/activity/posting/PostingActivity$a;
.super Ljava/lang/Object;
.source "PostingActivity.java"

# interfaces
.implements Lcom/join/mgps/activity/posting/PostingActivity$m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/posting/PostingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Lcom/join/mgps/activity/posting/PostingActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/posting/PostingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$a;->f:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    .line 1
    const-class v0, Lcom/join/mgps/activity/GameSearchFavoriteActivity_;

    const-string v1, "type"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity$a;->f:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity$a;->f:Lcom/join/mgps/activity/posting/PostingActivity;

    const/16 v1, 0x1102

    invoke-virtual {v0, p1, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 5
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity$a;->f:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-direct {p1, v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x2

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity$a;->f:Lcom/join/mgps/activity/posting/PostingActivity;

    const/16 v1, 0x1101

    invoke-virtual {v0, p1, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 8
    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity$a;->f:Lcom/join/mgps/activity/posting/PostingActivity;

    const-class v1, Lcom/join/mgps/activity/LocalGameActivity_;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity$a;->f:Lcom/join/mgps/activity/posting/PostingActivity;

    const/16 v1, 0x1100

    invoke-virtual {v0, p1, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1100
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$a;->f:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public c(Lcom/join/mgps/dto/GroupInfoBean;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity$a;->f:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/posting/PostingActivity;->M0(Lcom/join/mgps/activity/posting/PostingActivity;Lcom/join/mgps/dto/GroupInfoBean;)Lcom/join/mgps/dto/GroupInfoBean;

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$a;->f:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/posting/PostingActivity;->L0(Lcom/join/mgps/activity/posting/PostingActivity;)Lcom/join/mgps/dto/GroupInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/join/mgps/dto/GroupInfoBean;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/activity/posting/PostingActivity;->C1(Ljava/lang/String;Z)V

    return-void
.end method

.method public d(I)V
    .locals 5

    int-to-long v0, p1

    .line 1
    iget-object v2, p0, Lcom/join/mgps/activity/posting/PostingActivity$a;->f:Lcom/join/mgps/activity/posting/PostingActivity;

    iget-object v2, v2, Lcom/join/mgps/activity/posting/PostingActivity;->b:Lcom/join/mgps/Util/b;

    invoke-virtual {v2}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountBean;->getPapaMoney()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$a;->f:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-static {p1}, Lcom/join/mgps/Util/i2;->a(Landroid/content/Context;)Lcom/join/mgps/Util/i2;

    move-result-object p1

    const-string v0, "\u5f53\u524d\u94dc\u677f\u6570\u4e0d\u8db3!"

    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/i2;->b(Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity$a;->f:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-static {v0, p1}, Lcom/join/mgps/activity/posting/PostingActivity;->H0(Lcom/join/mgps/activity/posting/PostingActivity;I)I

    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/posting/PostingActivity$a;->f:Lcom/join/mgps/activity/posting/PostingActivity;

    iget-object v0, v0, Lcom/join/mgps/activity/posting/PostingActivity;->s:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u60ac\u8d4f\u94dc\u677f\u6570\uff1a<font color=#000000>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "</font>"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public e(I)V
    .locals 1

    const/16 v0, 0x1103

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1104

    if-eq p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$a;->f:Lcom/join/mgps/activity/posting/PostingActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$a;->f:Lcom/join/mgps/activity/posting/PostingActivity;

    sget-object v0, Lcom/join/mgps/rpc/g;->s:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/posting/PostingActivity;->j1(Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$a;->f:Lcom/join/mgps/activity/posting/PostingActivity;

    sget-object v0, Lcom/join/mgps/rpc/g;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/posting/PostingActivity;->j1(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
