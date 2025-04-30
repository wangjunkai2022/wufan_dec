.class public Lcom/mob/apc/APCException;
.super Ljava/lang/Exception;


# instance fields
.field public errorCode:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Lcom/mob/apc/APCException;->errorCode:I

    .line 5
    iput p1, p0, Lcom/mob/apc/APCException;->errorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/mob/apc/APCException;->errorCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/mob/apc/APCException;->errorCode:I

    return-void
.end method
