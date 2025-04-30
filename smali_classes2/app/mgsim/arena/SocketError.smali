.class public Lapp/mgsim/arena/SocketError;
.super Ljava/lang/Object;
.source "SocketError.java"


# static fields
.field public static final ERROR_TYPE_ACCOUNT_CHANGED:I = 0x5

.field public static final ERROR_TYPE_BAD_NETWORK:I = 0x1

.field public static final ERROR_TYPE_LOGIN_FAILURE:I = 0x6

.field public static final ERROR_TYPE_LOGIN_INVALID:I = 0x3

.field public static final ERROR_TYPE_LOGIN_KICKED:I = 0x2

.field public static final ERROR_TYPE_NEED_LOGIN:I = 0x4


# instance fields
.field public errorInfo:Ljava/lang/String;

.field public errorType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lapp/mgsim/arena/SocketError;->errorType:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lapp/mgsim/arena/SocketError;->errorType:I

    .line 5
    iput p1, p0, Lapp/mgsim/arena/SocketError;->errorType:I

    .line 6
    iput-object p2, p0, Lapp/mgsim/arena/SocketError;->errorInfo:Ljava/lang/String;

    return-void
.end method
