.class public Lorg/ppsspp/ppsspp/CheatInfo;
.super Ljava/lang/Object;
.source "CheatInfo.java"


# instance fields
.field public cheatName:Ljava/lang/String;

.field public i_default:I

.field public nVipLevel:I

.field public off:I

.field public option:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/ppsspp/ppsspp/CheatInfo;",
            ">;"
        }
    .end annotation
.end field

.field public optionNum:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lorg/ppsspp/ppsspp/CheatInfo;->cheatName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/ppsspp/ppsspp/CheatInfo;->i_default:I

    .line 4
    iput v0, p0, Lorg/ppsspp/ppsspp/CheatInfo;->nVipLevel:I

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/ppsspp/ppsspp/CheatInfo;->option:Ljava/util/ArrayList;

    const/4 v0, 0x2

    .line 6
    iput v0, p0, Lorg/ppsspp/ppsspp/CheatInfo;->optionNum:I

    .line 7
    iput-object p3, p0, Lorg/ppsspp/ppsspp/CheatInfo;->cheatName:Ljava/lang/String;

    .line 8
    iput p2, p0, Lorg/ppsspp/ppsspp/CheatInfo;->i_default:I

    .line 9
    iput p1, p0, Lorg/ppsspp/ppsspp/CheatInfo;->nVipLevel:I

    return-void
.end method
