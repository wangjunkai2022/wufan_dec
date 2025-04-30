.class Lcom/join/mgps/activity/GameMainActivity3$i$a;
.super Ljava/lang/Object;
.source "GameMainActivity3.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GameMainActivity3$i;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GameMainActivity3$i;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GameMainActivity3$i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3$i$a;->a:Lcom/join/mgps/activity/GameMainActivity3$i;

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
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3$i$a;->a:Lcom/join/mgps/activity/GameMainActivity3$i;

    iget-object p1, p1, Lcom/join/mgps/activity/GameMainActivity3$i;->a:Lcom/join/mgps/activity/GameMainActivity3;

    iget-object p1, p1, Lcom/join/mgps/activity/GameMainActivity3;->D0:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/join/mgps/dto/PspBattleServer;

    .line 2
    new-instance p2, Lcom/join/mgps/dto/NetBattleStartGameDto;

    invoke-direct {p2}, Lcom/join/mgps/dto/NetBattleStartGameDto;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/PspBattleServer;->getIp()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setServerIP(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/PspBattleServer;->getPort()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setServerPort(I)V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/join/mgps/activity/GameMainActivity3$i$a;->a:Lcom/join/mgps/activity/GameMainActivity3$i;

    iget-object p3, p3, Lcom/join/mgps/activity/GameMainActivity3$i;->a:Lcom/join/mgps/activity/GameMainActivity3;

    iget-object p3, p3, Lcom/join/mgps/activity/GameMainActivity3;->o0:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setGameID(Ljava/lang/String;)V

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p4, p0, Lcom/join/mgps/activity/GameMainActivity3$i$a;->a:Lcom/join/mgps/activity/GameMainActivity3$i;

    iget-object p4, p4, Lcom/join/mgps/activity/GameMainActivity3$i;->a:Lcom/join/mgps/activity/GameMainActivity3;

    invoke-static {p4}, Lcom/join/mgps/activity/GameMainActivity3;->y1(Lcom/join/mgps/activity/GameMainActivity3;)Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p4

    invoke-virtual {p4}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p4

    invoke-virtual {p4}, Lcom/join/mgps/dto/AccountBean;->getUid()I

    move-result p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setUserID(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 7
    invoke-virtual {p2, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setOldGame(I)V

    .line 8
    iget-object p3, p0, Lcom/join/mgps/activity/GameMainActivity3$i$a;->a:Lcom/join/mgps/activity/GameMainActivity3$i;

    iget-object p3, p3, Lcom/join/mgps/activity/GameMainActivity3$i;->a:Lcom/join/mgps/activity/GameMainActivity3;

    invoke-static {p3}, Lcom/join/mgps/activity/GameMainActivity3;->z1(Lcom/join/mgps/activity/GameMainActivity3;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setClientIp(Ljava/lang/String;)V

    .line 9
    iget-object p3, p0, Lcom/join/mgps/activity/GameMainActivity3$i$a;->a:Lcom/join/mgps/activity/GameMainActivity3$i;

    iget-object p3, p3, Lcom/join/mgps/activity/GameMainActivity3$i;->a:Lcom/join/mgps/activity/GameMainActivity3;

    invoke-static {p3}, Lcom/join/mgps/activity/GameMainActivity3;->y1(Lcom/join/mgps/activity/GameMainActivity3;)Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p3

    invoke-virtual {p3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p3

    invoke-virtual {p3}, Lcom/join/mgps/dto/AccountBean;->getNickname()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setUserName(Ljava/lang/String;)V

    .line 10
    iget-object p3, p0, Lcom/join/mgps/activity/GameMainActivity3$i$a;->a:Lcom/join/mgps/activity/GameMainActivity3$i;

    iget-object p3, p3, Lcom/join/mgps/activity/GameMainActivity3$i;->a:Lcom/join/mgps/activity/GameMainActivity3;

    invoke-static {p3}, Lcom/join/mgps/activity/GameMainActivity3;->y1(Lcom/join/mgps/activity/GameMainActivity3;)Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    move-result-object p3

    invoke-virtual {p3}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/join/mgps/dto/AccountBean;

    move-result-object p3

    invoke-virtual {p3}, Lcom/join/mgps/dto/AccountBean;->getAvatarSrc()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setUserIcon(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p2, p1}, Lcom/join/mgps/dto/NetBattleStartGameDto;->setPorder(I)V

    .line 12
    iget-object p1, p0, Lcom/join/mgps/activity/GameMainActivity3$i$a;->a:Lcom/join/mgps/activity/GameMainActivity3$i;

    iget-object p1, p1, Lcom/join/mgps/activity/GameMainActivity3$i;->a:Lcom/join/mgps/activity/GameMainActivity3;

    invoke-static {p1}, Lcom/join/mgps/activity/GameMainActivity3;->y1(Lcom/join/mgps/activity/GameMainActivity3;)Landroid/content/Context;

    move-result-object p1

    iget-object p3, p0, Lcom/join/mgps/activity/GameMainActivity3$i$a;->a:Lcom/join/mgps/activity/GameMainActivity3$i;

    iget-object p3, p3, Lcom/join/mgps/activity/GameMainActivity3$i;->a:Lcom/join/mgps/activity/GameMainActivity3;

    invoke-static {p3}, Lcom/join/mgps/activity/GameMainActivity3;->A1(Lcom/join/mgps/activity/GameMainActivity3;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    move-result-object p3

    const/16 p4, 0xd

    invoke-static {p1, p2, p3, p4}, Lcom/join/mgps/Util/UtilsMy;->k3(Landroid/content/Context;Lcom/join/mgps/dto/NetBattleStartGameDto;Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V

    return-void
.end method
