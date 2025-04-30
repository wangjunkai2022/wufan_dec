.class public Lcom/join/mgps/dto/RequestDownloadCenterArgs;
.super Ljava/lang/Object;
.source "RequestDownloadCenterArgs.java"


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/RequestDownloadCenterArgs;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/RequestDownloadCenterArgs;->type:Ljava/lang/String;

    return-void
.end method
