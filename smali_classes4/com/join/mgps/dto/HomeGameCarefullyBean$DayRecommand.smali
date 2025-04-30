.class public Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;
.super Ljava/lang/Object;
.source "HomeGameCarefullyBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/HomeGameCarefullyBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DayRecommand"
.end annotation


# instance fields
.field private addTimes:J

.field game_discover:Lcom/join/mgps/dto/TodayWufunBroadcast;

.field game_information:Lcom/join/mgps/dto/InformationListDataBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddTimes()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->addTimes:J

    return-wide v0
.end method

.method public getGame_discover()Lcom/join/mgps/dto/TodayWufunBroadcast;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->game_discover:Lcom/join/mgps/dto/TodayWufunBroadcast;

    return-object v0
.end method

.method public getGame_information()Lcom/join/mgps/dto/InformationListDataBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->game_information:Lcom/join/mgps/dto/InformationListDataBean;

    return-object v0
.end method

.method public setAddTimes(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->addTimes:J

    return-void
.end method

.method public setGame_discover(Lcom/join/mgps/dto/TodayWufunBroadcast;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->game_discover:Lcom/join/mgps/dto/TodayWufunBroadcast;

    return-void
.end method

.method public setGame_information(Lcom/join/mgps/dto/InformationListDataBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/HomeGameCarefullyBean$DayRecommand;->game_information:Lcom/join/mgps/dto/InformationListDataBean;

    return-void
.end method
