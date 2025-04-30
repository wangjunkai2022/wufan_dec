.class public Lcom/join/mgps/dto/PAPAHomeBeanV7$ListDTO;
.super Ljava/lang/Object;
.source "PAPAHomeBeanV7.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/PAPAHomeBeanV7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListDTO"
.end annotation


# instance fields
.field private ico:Ljava/lang/String;

.field private id:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIco()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$ListDTO;->ico:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$ListDTO;->id:Ljava/lang/Long;

    return-object v0
.end method

.method public setIco(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$ListDTO;->ico:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/Long;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/PAPAHomeBeanV7$ListDTO;->id:Ljava/lang/Long;

    return-void
.end method
