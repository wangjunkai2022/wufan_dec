.class public Lcom/join/mgps/dto/UNZipPathBackBean;
.super Ljava/lang/Object;
.source "UNZipPathBackBean.java"


# instance fields
.field gameZipPath:Ljava/lang/String;

.field soucePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGameZipPath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/UNZipPathBackBean;->gameZipPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSoucePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/UNZipPathBackBean;->soucePath:Ljava/lang/String;

    return-object v0
.end method

.method public setGameZipPath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/UNZipPathBackBean;->gameZipPath:Ljava/lang/String;

    return-void
.end method

.method public setSoucePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/UNZipPathBackBean;->soucePath:Ljava/lang/String;

    return-void
.end method
