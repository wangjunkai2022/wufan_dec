.class Lcom/join/mgps/activity/arena/GameRoomActivity$v;
.super Landroid/os/Handler;
.source "GameRoomActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/arena/GameRoomActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/arena/GameRoomActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/arena/GameRoomActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->K1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->Y1(Lcom/join/mgps/activity/arena/GameRoomActivity;)I

    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->X1(Lcom/join/mgps/activity/arena/GameRoomActivity;)I

    move-result p1

    const-wide/16 v0, 0x3e8

    const/4 v2, 0x0

    if-gtz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->A1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lcom/join/mgps/socket/fight/arena/a;

    move-result-object p1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "\u5bf9\u4e0d\u8d77\uff0c\u60a8\u957f\u65f6\u95f4\u672a\u5f00\u59cb\u6e38\u620f\uff0c\u60a8\u5df2\u88ab\u8e22\u51fa\u623f\u95f4!"

    aput-object v4, v3, v2

    const-string v2, "toast_kic_out_room"

    invoke-virtual {p1, v2, v3}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->B1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Landroid/os/Handler;

    move-result-object p1

    const/16 v2, 0x66

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->Q1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Lapp/mgsim/arena/UserType;

    move-result-object p1

    sget-object v3, Lapp/mgsim/arena/UserType;->OWNER:Lapp/mgsim/arena/UserType;

    const/16 v4, 0x64

    const-string v5, "s)"

    const-string v6, "("

    if-ne p1, v3, :cond_2

    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->C0:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u5bf9\u65b9\u5df2\u51c6\u5907\uff0c\u8bf7\u5f00\u59cb\u6e38\u620f("

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {v7}, Lcom/join/mgps/activity/arena/GameRoomActivity;->X1(Lcom/join/mgps/activity/arena/GameRoomActivity;)I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->g1:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {v6}, Lcom/join/mgps/activity/arena/GameRoomActivity;->X1(Lcom/join/mgps/activity/arena/GameRoomActivity;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->g1:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->f1:Landroid/widget/ImageView;

    const v2, 0x7f080947

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->C1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 13
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->g1:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {v6}, Lcom/join/mgps/activity/arena/GameRoomActivity;->X1(Lcom/join/mgps/activity/arena/GameRoomActivity;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->g1:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    iget-object p1, p1, Lcom/join/mgps/activity/arena/GameRoomActivity;->f1:Landroid/widget/ImageView;

    const v2, 0x7f080936

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/arena/GameRoomActivity$v;->a:Lcom/join/mgps/activity/arena/GameRoomActivity;

    invoke-static {p1}, Lcom/join/mgps/activity/arena/GameRoomActivity;->C1(Lcom/join/mgps/activity/arena/GameRoomActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v4, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method
