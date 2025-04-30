.class public Lcom/join/mgps/dto/BluetoothHandleBlackListData$DataInfo;
.super Ljava/lang/Object;
.source "BluetoothHandleBlackListData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/BluetoothHandleBlackListData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataInfo"
.end annotation


# instance fields
.field private id:Ljava/lang/String;
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonProperty;
    .end annotation
.end field

.field private model_number:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BluetoothHandleBlackListData$DataInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getModel_number()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/BluetoothHandleBlackListData$DataInfo;->model_number:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BluetoothHandleBlackListData$DataInfo;->id:Ljava/lang/String;

    return-void
.end method

.method public setModel_number(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/BluetoothHandleBlackListData$DataInfo;->model_number:Ljava/lang/String;

    return-void
.end method
