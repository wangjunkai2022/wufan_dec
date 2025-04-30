.class public Lorg/ppsspp/ppsspp/EditCheatInfo;
.super Ljava/lang/Object;
.source "EditCheatInfo.java"


# instance fields
.field public GBA_IS_GS:Z

.field public cheatName:Ljava/lang/String;

.field public cheatValue:Ljava/lang/String;

.field public isEnable:Z


# direct methods
.method public constructor <init>(ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/ppsspp/ppsspp/EditCheatInfo;->cheatName:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lorg/ppsspp/ppsspp/EditCheatInfo;->cheatValue:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    .line 5
    iput-boolean v0, p0, Lorg/ppsspp/ppsspp/EditCheatInfo;->GBA_IS_GS:Z

    .line 6
    iput-object p3, p0, Lorg/ppsspp/ppsspp/EditCheatInfo;->cheatName:Ljava/lang/String;

    .line 7
    iput-object p4, p0, Lorg/ppsspp/ppsspp/EditCheatInfo;->cheatValue:Ljava/lang/String;

    .line 8
    iput-boolean p1, p0, Lorg/ppsspp/ppsspp/EditCheatInfo;->isEnable:Z

    .line 9
    iput-boolean p2, p0, Lorg/ppsspp/ppsspp/EditCheatInfo;->GBA_IS_GS:Z

    return-void
.end method
