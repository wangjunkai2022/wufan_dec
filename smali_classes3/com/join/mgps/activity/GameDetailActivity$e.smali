.class Lcom/join/mgps/activity/GameDetailActivity$e;
.super Ljava/lang/Object;
.source "GameDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameDetailActivity;->f1(Lcom/join/mgps/activity/GameDetailActivity$l;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/GameListItemBean;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$e;->a:Lcom/join/mgps/activity/GameDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$e;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity;->N0:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$e;->a:Lcom/join/mgps/activity/GameDetailActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/GameDetailActivity;->N0:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$e;->a:Lcom/join/mgps/activity/GameDetailActivity;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/join/mgps/activity/GameDetailActivity;->Q0:Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$e;->a:Lcom/join/mgps/activity/GameDetailActivity;

    const-string v0, "\u4eb2\uff0c\u8bf7\u6162\u70b9"

    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/GameDetailActivity;->g1(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
