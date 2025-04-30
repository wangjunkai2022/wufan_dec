.class Lcom/join/mgps/activity/GamePaiWeiActivty$d;
.super Lcom/join/android/app/common/http/d$p;
.source "GamePaiWeiActivty.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GamePaiWeiActivty;->a(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/android/app/common/http/d$p<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;

.field final synthetic c:Lcom/join/mgps/activity/GamePaiWeiActivty;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GamePaiWeiActivty;Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$d;->c:Lcom/join/mgps/activity/GamePaiWeiActivty;

    iput-object p2, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$d;->b:Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;

    invoke-direct {p0}, Lcom/join/android/app/common/http/d$p;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lokhttp3/Request;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$d;->c:Lcom/join/mgps/activity/GamePaiWeiActivty;

    invoke-static {p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->l(Lcom/join/mgps/activity/GamePaiWeiActivty;)Landroid/content/Context;

    move-result-object p1

    const-string p2, "\u56de\u653e\u5931\u8d25\uff01"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$d;->c:Lcom/join/mgps/activity/GamePaiWeiActivty;

    invoke-virtual {p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->s()V

    return-void
.end method

.method public bridge synthetic e(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty$d;->f(Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$d;->c:Lcom/join/mgps/activity/GamePaiWeiActivty;

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->N(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$d;->b:Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$d;->c:Lcom/join/mgps/activity/GamePaiWeiActivty;

    iget v1, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->B:I

    const/16 v2, 0xe

    if-ne v1, v2, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/papa91/arc/bean/PaiWeiDataBean$RankListBean;->getPlay_id()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->o(Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$d;->c:Lcom/join/mgps/activity/GamePaiWeiActivty;

    invoke-virtual {p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->s()V

    return-void
.end method
