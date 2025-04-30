.class public Lk1/b;
.super Ljava/lang/Object;
.source "GameSingleCompanyBuness.java"


# instance fields
.field private a:Lcom/join/mgps/dto/GameOLHeadAdBean;

.field private b:Lcom/join/mgps/dto/GameOLHeadAdBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/join/mgps/dto/GameOLHeadAdBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lk1/b;->a:Lcom/join/mgps/dto/GameOLHeadAdBean;

    return-object v0
.end method

.method public b()Lcom/join/mgps/dto/GameOLHeadAdBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lk1/b;->b:Lcom/join/mgps/dto/GameOLHeadAdBean;

    return-object v0
.end method

.method public c(Lcom/join/mgps/dto/GameOLHeadAdBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk1/b;->a:Lcom/join/mgps/dto/GameOLHeadAdBean;

    return-void
.end method

.method public d(Lcom/join/mgps/dto/GameOLHeadAdBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk1/b;->b:Lcom/join/mgps/dto/GameOLHeadAdBean;

    return-void
.end method
