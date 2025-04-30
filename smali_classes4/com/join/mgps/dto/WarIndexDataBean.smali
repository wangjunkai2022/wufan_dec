.class public Lcom/join/mgps/dto/WarIndexDataBean;
.super Ljava/lang/Object;
.source "WarIndexDataBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private hotgame:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FightDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private pkgame:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FightDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private pklocal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FightDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private pkmatching:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FightDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private pkpass:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FightDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private pkroom:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FightDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private warad:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FightDataBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FightDataBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FightDataBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FightDataBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FightDataBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FightDataBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FightDataBean;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FightDataBean;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/join/mgps/dto/WarIndexDataBean;->warad:Ljava/util/List;

    .line 4
    iput-object p2, p0, Lcom/join/mgps/dto/WarIndexDataBean;->hotgame:Ljava/util/List;

    .line 5
    iput-object p3, p0, Lcom/join/mgps/dto/WarIndexDataBean;->pkgame:Ljava/util/List;

    .line 6
    iput-object p4, p0, Lcom/join/mgps/dto/WarIndexDataBean;->pkpass:Ljava/util/List;

    .line 7
    iput-object p5, p0, Lcom/join/mgps/dto/WarIndexDataBean;->pkmatching:Ljava/util/List;

    .line 8
    iput-object p6, p0, Lcom/join/mgps/dto/WarIndexDataBean;->pklocal:Ljava/util/List;

    .line 9
    iput-object p7, p0, Lcom/join/mgps/dto/WarIndexDataBean;->pkroom:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getHotgame()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FightDataBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/WarIndexDataBean;->hotgame:Ljava/util/List;

    return-object v0
.end method

.method public getPkgame()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FightDataBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/WarIndexDataBean;->pkgame:Ljava/util/List;

    return-object v0
.end method

.method public getPklocal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FightDataBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/WarIndexDataBean;->pklocal:Ljava/util/List;

    return-object v0
.end method

.method public getPkmatching()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FightDataBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/WarIndexDataBean;->pkmatching:Ljava/util/List;

    return-object v0
.end method

.method public getPkpass()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FightDataBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/WarIndexDataBean;->pkpass:Ljava/util/List;

    return-object v0
.end method

.method public getPkroom()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FightDataBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/WarIndexDataBean;->pkroom:Ljava/util/List;

    return-object v0
.end method

.method public getWarad()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FightDataBean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/WarIndexDataBean;->warad:Ljava/util/List;

    return-object v0
.end method

.method public setHotgame(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FightDataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/WarIndexDataBean;->hotgame:Ljava/util/List;

    return-void
.end method

.method public setPkgame(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FightDataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/WarIndexDataBean;->pkgame:Ljava/util/List;

    return-void
.end method

.method public setPklocal(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FightDataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/WarIndexDataBean;->pklocal:Ljava/util/List;

    return-void
.end method

.method public setPkmatching(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FightDataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/WarIndexDataBean;->pkmatching:Ljava/util/List;

    return-void
.end method

.method public setPkpass(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FightDataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/WarIndexDataBean;->pkpass:Ljava/util/List;

    return-void
.end method

.method public setPkroom(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FightDataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/WarIndexDataBean;->pkroom:Ljava/util/List;

    return-void
.end method

.method public setWarad(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FightDataBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/WarIndexDataBean;->warad:Ljava/util/List;

    return-void
.end method
