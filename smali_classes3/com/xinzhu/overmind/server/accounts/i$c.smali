.class Lcom/xinzhu/overmind/server/accounts/i$c;
.super Ljava/lang/Object;
.source "TokenCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/server/accounts/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "token",
            "expiryEpochMillis"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xinzhu/overmind/server/accounts/i$c;->a:Ljava/lang/String;

    .line 3
    iput-wide p2, p0, Lcom/xinzhu/overmind/server/accounts/i$c;->b:J

    return-void
.end method
