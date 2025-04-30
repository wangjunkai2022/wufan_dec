.class final Lcom/join/mgps/socket/a$b;
.super Ljava/lang/Object;
.source "RequestQueneManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/socket/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/join/mgps/socket/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/socket/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/join/mgps/socket/a;-><init>(Lcom/join/mgps/socket/a$a;)V

    sput-object v0, Lcom/join/mgps/socket/a$b;->a:Lcom/join/mgps/socket/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
